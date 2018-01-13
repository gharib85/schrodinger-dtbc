function saveMovie( pFrame, Params )
% movie2avi(rCalc.Movie,'movie500_fps_15_compr_none.avi','compression','none');
% movie2avi(rCalc.Movie,'movie500_fps_60_compr_none.avi','fps',60,'compression','none');
% movie2avi(rCalc.Movie,'movie625_reflect_fps_15_compr_none.avi','compression','none','quality',100);
%last used Params.nFPS
logMessage( 'info', 'SaveData'...
    , 'Saving output data in %s'...
    , Params.sFullName, mfilename );
%% No COMPRESSION
% movie2avi( pFrame, Params.sFullName, 'compression', Params.sCompression, 'quality', Params.nQuality );
% keyboard
%% USE COMPRESSION:
sCodec   = 'none';
nQuality = 100;
nFPS     = 10;
movie2avi( pFrame, [ Params.sFullName '_' sCodec '_' num2str(nQuality) '.avi' ]...
         , 'compression', sCodec ...
         , 'quality', nQuality   ...
         , 'fps'    , nFPS );
%         , 'quality', nQuality );             
logMessage( 'info', 'SaveData'...
    , 'Output data is saved into file %s'...
    , Params.sFullName, mfilename );