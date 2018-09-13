#ifndef CROP_SWC_MAIN_H
#define CROP_SWC_MAIN_H

#include "QtGlobal"
#include "vector"
#include "v3d_message.h"
#include "v3d_interface.h"

#include "prune_short_branch.h"
#include "resampling.h"
#include "align_axis.h"
#include "neuron_connector_func.h"
using namespace std;

#include "QtGui"
#include "basic_surf_objs.h"
#include "sort_swc_redefined.h"
#include "neurite_analysis_main.h"
#include "connnect_swc_redefined.h"
#include "utilities.h"
#include "axon_func.h"

#if !defined(Q_OS_WIN32)
#include "unistd.h"
#endif

#if defined(Q_OS_WIN32)
#include "getopt_tool.h"
#include "io.h"
#endif

bool crop_swc_dofunc(const V3DPluginArgList & input, V3DPluginArgList & output);
void printHelp_crop_swc();
#endif // CROP_SWC_MAIN_H
