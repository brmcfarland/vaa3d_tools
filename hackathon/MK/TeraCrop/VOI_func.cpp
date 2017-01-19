#include <vector>
#include "Tera_VOI_Generator_plugin.h"
#include "../../zhi/IVSCC_sort_swc/openSWCDialog.h"
#include <v3d_interface.h>
#include "v3d_message.h"
#include "VOI_func.h"
#include <vector>
#include <iostream>
#include "../../../released_plugins/v3d_plugins/gsdt/common_dialog.h"

using namespace std;

NeuronTree cropSWCfile3D(NeuronTree nt, int xb, int xe, int yb, int ye, int zb, int ze,int type)
{
    //NeutronTree structure
    NeuronTree nt_prunned;
    QList <NeuronSWC> listNeuron;
    QHash <int, int>  hashNeuron;
    listNeuron.clear();
    hashNeuron.clear();

    //set node

    QList<NeuronSWC> list = nt.listNeuron;
    NeuronSWC S;
    for (int i=0;i<list.size();i++)
    {
        NeuronSWC curr = list.at(i);
        if(curr.x <= xe && curr.x >=xb && curr.y <= ye && curr.y >=yb && curr.z <= ze && curr.z >=zb && (type == -1 || curr.type == type))
        {
            S.x 	= curr.x-xb;
            S.y 	= curr.y-yb;
            S.z 	= curr.z-zb;
            S.n 	= curr.n;
            S.type = curr.type;
            S.r 	= curr.r;
            S.pn 	= curr.pn;
            listNeuron.append(S);
            hashNeuron.insert(S.n, listNeuron.size()-1);
        }
   }
   nt_prunned.n = -1;
   nt_prunned.on = true;
   nt_prunned.listNeuron = listNeuron;
   nt_prunned.hashNeuron = hashNeuron;

   return nt_prunned;
}

QStringList importSeriesFileList_addnumbersort(const QString & curFilePath)
{
    QStringList myList;
    myList.clear();

    // get the image files namelist in the directory
    QStringList imgSuffix;
    imgSuffix<<"*.tif"<<"*.raw"<<"*.v3draw"<<"*.lsm"
            <<"*.TIF"<<"*.RAW"<<"*.V3DRAW"<<"*.LSM";

    QDir dir(curFilePath);
    if (!dir.exists())
    {
        qWarning("Cannot find the directory");
        return myList;
    }

    foreach (QString file, dir.entryList(imgSuffix, QDir::Files, QDir::Name))
    {
        myList += QFileInfo(dir, file).absoluteFilePath();
    }

    // print filenames
    //foreach (QString qs, myList)  qDebug() << qs;

    return myList;
}

void Piling2Dimages(unsigned char* InputImagePtr, unsigned char* OutputImagePtr, 
				    int xlb, int xhb, int ylb, int yhb, int zlb, int zhb, 
					int x_Length, int y_Length, int z_Length) 
{
	int OutputArrayi = 0;
	V3DLONG offset2D = x_Length * y_Length;
	for (V3DLONG zi=zlb; zi<=zhb; zi++)
	{
        for(V3DLONG yi=ylb; yi<=yhb; yi++)
		{
			for(V3DLONG xi=xlb; xi<=xhb; xi++)
            {
				OutputImagePtr[OutputArrayi] = InputImagePtr[offset2D*(zi-1) + x_Length*(yi-1) + xi];
				OutputArrayi++;
            }
        }
    }
}

