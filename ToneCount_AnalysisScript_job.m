%-----------------------------------------------------------------------
% Job saved on 15-Nov-2021 15:38:33 by cfg_util (rev $Rev: 7345 $)
% spm SPM - SPM12 (7771)
% cfg_basicio BasicIO - Unknown
%-----------------------------------------------------------------------
%%

subjects = [01 02 03 04 05 06 07 08 09 10 11 12 13 14]; % Replace with a list of all of the subjects you wish to analyze

user = getenv('USER'); % Will return the username for OSX operating systems; change to 'USERNAME' for Windows

for subject=subjects
    
subject = num2str(subject, '%02d'); % Zero-pads each number so that the subject ID is 2 characters long

%%%%%%%%%%

% Check whether the files have been unzipped. If not, unzip them using
% gunzip

if exist(['/Users/' user '/Desktop/ToneCounting/sub-' subject '/func/sub-' subject '_task-tonecounting_bold.nii']) == 0
    display('Run 1 has not been unzipped; unzipping now')
    gunzip(['/Users/' user '/Desktop/ToneCounting/sub-' subject '/func/sub-' subject '_task-tonecounting_bold.nii.gz'])
else
    display('Run 1 is already unzipped; doing nothing')
end

if exist(['/Users/' user '/Desktop/ToneCounting/sub-' subject '/anat/sub-' subject '_T1w.nii']) == 0
    display('Anatomical image has not been unzipped; unzipping now')
    gunzip(['/Users/' user '/Desktop/ToneCounting/sub-' subject '/anat/sub-' subject '_T1w.nii.gz'])
else
    display('Anatomical image is already unzipped; doing nothing')
end

matlabbatch{1}.spm.spatial.realign.estwrite.data = {
                                                    {
                                                    ['/Users/' user '/Desktop/ToneCounting/sub-' subject '/func/sub-' subject '_task-tonecounting_bold.nii,1']
                                                    ['/Users/' user '/Desktop/ToneCounting/sub-' subject '/func/sub-' subject '_task-tonecounting_bold.nii,2']
                                                    ['/Users/' user '/Desktop/ToneCounting/sub-' subject '/func/sub-' subject '_task-tonecounting_bold.nii,3']
                                                    ['/Users/' user '/Desktop/ToneCounting/sub-' subject '/func/sub-' subject '_task-tonecounting_bold.nii,4']
                                                    ['/Users/' user '/Desktop/ToneCounting/sub-' subject '/func/sub-' subject '_task-tonecounting_bold.nii,5']
                                                    ['/Users/' user '/Desktop/ToneCounting/sub-' subject '/func/sub-' subject '_task-tonecounting_bold.nii,6']
                                                    ['/Users/' user '/Desktop/ToneCounting/sub-' subject '/func/sub-' subject '_task-tonecounting_bold.nii,7']
                                                    ['/Users/' user '/Desktop/ToneCounting/sub-' subject '/func/sub-' subject '_task-tonecounting_bold.nii,8']
                                                    ['/Users/' user '/Desktop/ToneCounting/sub-' subject '/func/sub-' subject '_task-tonecounting_bold.nii,9']
                                                    ['/Users/' user '/Desktop/ToneCounting/sub-' subject '/func/sub-' subject '_task-tonecounting_bold.nii,10']
                                                    ['/Users/' user '/Desktop/ToneCounting/sub-' subject '/func/sub-' subject '_task-tonecounting_bold.nii,11']
                                                    ['/Users/' user '/Desktop/ToneCounting/sub-' subject '/func/sub-' subject '_task-tonecounting_bold.nii,12']
                                                    ['/Users/' user '/Desktop/ToneCounting/sub-' subject '/func/sub-' subject '_task-tonecounting_bold.nii,13']
                                                    ['/Users/' user '/Desktop/ToneCounting/sub-' subject '/func/sub-' subject '_task-tonecounting_bold.nii,14']
                                                    ['/Users/' user '/Desktop/ToneCounting/sub-' subject '/func/sub-' subject '_task-tonecounting_bold.nii,15']
                                                    ['/Users/' user '/Desktop/ToneCounting/sub-' subject '/func/sub-' subject '_task-tonecounting_bold.nii,16']
                                                    ['/Users/' user '/Desktop/ToneCounting/sub-' subject '/func/sub-' subject '_task-tonecounting_bold.nii,17']
                                                    ['/Users/' user '/Desktop/ToneCounting/sub-' subject '/func/sub-' subject '_task-tonecounting_bold.nii,18']
                                                    ['/Users/' user '/Desktop/ToneCounting/sub-' subject '/func/sub-' subject '_task-tonecounting_bold.nii,19']
                                                    ['/Users/' user '/Desktop/ToneCounting/sub-' subject '/func/sub-' subject '_task-tonecounting_bold.nii,20']
                                                    ['/Users/' user '/Desktop/ToneCounting/sub-' subject '/func/sub-' subject '_task-tonecounting_bold.nii,21']
                                                    ['/Users/' user '/Desktop/ToneCounting/sub-' subject '/func/sub-' subject '_task-tonecounting_bold.nii,22']
                                                    ['/Users/' user '/Desktop/ToneCounting/sub-' subject '/func/sub-' subject '_task-tonecounting_bold.nii,23']
                                                    ['/Users/' user '/Desktop/ToneCounting/sub-' subject '/func/sub-' subject '_task-tonecounting_bold.nii,24']
                                                    ['/Users/' user '/Desktop/ToneCounting/sub-' subject '/func/sub-' subject '_task-tonecounting_bold.nii,25']
                                                    ['/Users/' user '/Desktop/ToneCounting/sub-' subject '/func/sub-' subject '_task-tonecounting_bold.nii,26']
                                                    ['/Users/' user '/Desktop/ToneCounting/sub-' subject '/func/sub-' subject '_task-tonecounting_bold.nii,27']
                                                    ['/Users/' user '/Desktop/ToneCounting/sub-' subject '/func/sub-' subject '_task-tonecounting_bold.nii,28']
                                                    ['/Users/' user '/Desktop/ToneCounting/sub-' subject '/func/sub-' subject '_task-tonecounting_bold.nii,29']
                                                    ['/Users/' user '/Desktop/ToneCounting/sub-' subject '/func/sub-' subject '_task-tonecounting_bold.nii,30']
                                                    ['/Users/' user '/Desktop/ToneCounting/sub-' subject '/func/sub-' subject '_task-tonecounting_bold.nii,31']
                                                    ['/Users/' user '/Desktop/ToneCounting/sub-' subject '/func/sub-' subject '_task-tonecounting_bold.nii,32']
                                                    ['/Users/' user '/Desktop/ToneCounting/sub-' subject '/func/sub-' subject '_task-tonecounting_bold.nii,33']
                                                    ['/Users/' user '/Desktop/ToneCounting/sub-' subject '/func/sub-' subject '_task-tonecounting_bold.nii,34']
                                                    ['/Users/' user '/Desktop/ToneCounting/sub-' subject '/func/sub-' subject '_task-tonecounting_bold.nii,35']
                                                    ['/Users/' user '/Desktop/ToneCounting/sub-' subject '/func/sub-' subject '_task-tonecounting_bold.nii,36']
                                                    ['/Users/' user '/Desktop/ToneCounting/sub-' subject '/func/sub-' subject '_task-tonecounting_bold.nii,37']
                                                    ['/Users/' user '/Desktop/ToneCounting/sub-' subject '/func/sub-' subject '_task-tonecounting_bold.nii,38']
                                                    ['/Users/' user '/Desktop/ToneCounting/sub-' subject '/func/sub-' subject '_task-tonecounting_bold.nii,39']
                                                    ['/Users/' user '/Desktop/ToneCounting/sub-' subject '/func/sub-' subject '_task-tonecounting_bold.nii,40']
                                                    ['/Users/' user '/Desktop/ToneCounting/sub-' subject '/func/sub-' subject '_task-tonecounting_bold.nii,41']
                                                    ['/Users/' user '/Desktop/ToneCounting/sub-' subject '/func/sub-' subject '_task-tonecounting_bold.nii,42']
                                                    ['/Users/' user '/Desktop/ToneCounting/sub-' subject '/func/sub-' subject '_task-tonecounting_bold.nii,43']
                                                    ['/Users/' user '/Desktop/ToneCounting/sub-' subject '/func/sub-' subject '_task-tonecounting_bold.nii,44']
                                                    ['/Users/' user '/Desktop/ToneCounting/sub-' subject '/func/sub-' subject '_task-tonecounting_bold.nii,45']
                                                    ['/Users/' user '/Desktop/ToneCounting/sub-' subject '/func/sub-' subject '_task-tonecounting_bold.nii,46']
                                                    ['/Users/' user '/Desktop/ToneCounting/sub-' subject '/func/sub-' subject '_task-tonecounting_bold.nii,47']
                                                    ['/Users/' user '/Desktop/ToneCounting/sub-' subject '/func/sub-' subject '_task-tonecounting_bold.nii,48']
                                                    ['/Users/' user '/Desktop/ToneCounting/sub-' subject '/func/sub-' subject '_task-tonecounting_bold.nii,49']
                                                    ['/Users/' user '/Desktop/ToneCounting/sub-' subject '/func/sub-' subject '_task-tonecounting_bold.nii,50']
                                                    ['/Users/' user '/Desktop/ToneCounting/sub-' subject '/func/sub-' subject '_task-tonecounting_bold.nii,51']
                                                    ['/Users/' user '/Desktop/ToneCounting/sub-' subject '/func/sub-' subject '_task-tonecounting_bold.nii,52']
                                                    ['/Users/' user '/Desktop/ToneCounting/sub-' subject '/func/sub-' subject '_task-tonecounting_bold.nii,53']
                                                    ['/Users/' user '/Desktop/ToneCounting/sub-' subject '/func/sub-' subject '_task-tonecounting_bold.nii,54']
                                                    ['/Users/' user '/Desktop/ToneCounting/sub-' subject '/func/sub-' subject '_task-tonecounting_bold.nii,55']
                                                    ['/Users/' user '/Desktop/ToneCounting/sub-' subject '/func/sub-' subject '_task-tonecounting_bold.nii,56']
                                                    ['/Users/' user '/Desktop/ToneCounting/sub-' subject '/func/sub-' subject '_task-tonecounting_bold.nii,57']
                                                    ['/Users/' user '/Desktop/ToneCounting/sub-' subject '/func/sub-' subject '_task-tonecounting_bold.nii,58']
                                                    ['/Users/' user '/Desktop/ToneCounting/sub-' subject '/func/sub-' subject '_task-tonecounting_bold.nii,59']
                                                    ['/Users/' user '/Desktop/ToneCounting/sub-' subject '/func/sub-' subject '_task-tonecounting_bold.nii,60']
                                                    ['/Users/' user '/Desktop/ToneCounting/sub-' subject '/func/sub-' subject '_task-tonecounting_bold.nii,61']
                                                    ['/Users/' user '/Desktop/ToneCounting/sub-' subject '/func/sub-' subject '_task-tonecounting_bold.nii,62']
                                                    ['/Users/' user '/Desktop/ToneCounting/sub-' subject '/func/sub-' subject '_task-tonecounting_bold.nii,63']
                                                    ['/Users/' user '/Desktop/ToneCounting/sub-' subject '/func/sub-' subject '_task-tonecounting_bold.nii,64']
                                                    ['/Users/' user '/Desktop/ToneCounting/sub-' subject '/func/sub-' subject '_task-tonecounting_bold.nii,65']
                                                    ['/Users/' user '/Desktop/ToneCounting/sub-' subject '/func/sub-' subject '_task-tonecounting_bold.nii,66']
                                                    ['/Users/' user '/Desktop/ToneCounting/sub-' subject '/func/sub-' subject '_task-tonecounting_bold.nii,67']
                                                    ['/Users/' user '/Desktop/ToneCounting/sub-' subject '/func/sub-' subject '_task-tonecounting_bold.nii,68']
                                                    ['/Users/' user '/Desktop/ToneCounting/sub-' subject '/func/sub-' subject '_task-tonecounting_bold.nii,69']
                                                    ['/Users/' user '/Desktop/ToneCounting/sub-' subject '/func/sub-' subject '_task-tonecounting_bold.nii,70']
                                                    ['/Users/' user '/Desktop/ToneCounting/sub-' subject '/func/sub-' subject '_task-tonecounting_bold.nii,71']
                                                    ['/Users/' user '/Desktop/ToneCounting/sub-' subject '/func/sub-' subject '_task-tonecounting_bold.nii,72']
                                                    ['/Users/' user '/Desktop/ToneCounting/sub-' subject '/func/sub-' subject '_task-tonecounting_bold.nii,73']
                                                    ['/Users/' user '/Desktop/ToneCounting/sub-' subject '/func/sub-' subject '_task-tonecounting_bold.nii,74']
                                                    ['/Users/' user '/Desktop/ToneCounting/sub-' subject '/func/sub-' subject '_task-tonecounting_bold.nii,75']
                                                    ['/Users/' user '/Desktop/ToneCounting/sub-' subject '/func/sub-' subject '_task-tonecounting_bold.nii,76']
                                                    ['/Users/' user '/Desktop/ToneCounting/sub-' subject '/func/sub-' subject '_task-tonecounting_bold.nii,77']
                                                    ['/Users/' user '/Desktop/ToneCounting/sub-' subject '/func/sub-' subject '_task-tonecounting_bold.nii,78']
                                                    ['/Users/' user '/Desktop/ToneCounting/sub-' subject '/func/sub-' subject '_task-tonecounting_bold.nii,79']
                                                    ['/Users/' user '/Desktop/ToneCounting/sub-' subject '/func/sub-' subject '_task-tonecounting_bold.nii,80']
                                                    ['/Users/' user '/Desktop/ToneCounting/sub-' subject '/func/sub-' subject '_task-tonecounting_bold.nii,81']
                                                    ['/Users/' user '/Desktop/ToneCounting/sub-' subject '/func/sub-' subject '_task-tonecounting_bold.nii,82']
                                                    ['/Users/' user '/Desktop/ToneCounting/sub-' subject '/func/sub-' subject '_task-tonecounting_bold.nii,83']
                                                    ['/Users/' user '/Desktop/ToneCounting/sub-' subject '/func/sub-' subject '_task-tonecounting_bold.nii,84']
                                                    ['/Users/' user '/Desktop/ToneCounting/sub-' subject '/func/sub-' subject '_task-tonecounting_bold.nii,85']
                                                    ['/Users/' user '/Desktop/ToneCounting/sub-' subject '/func/sub-' subject '_task-tonecounting_bold.nii,86']
                                                    ['/Users/' user '/Desktop/ToneCounting/sub-' subject '/func/sub-' subject '_task-tonecounting_bold.nii,87']
                                                    ['/Users/' user '/Desktop/ToneCounting/sub-' subject '/func/sub-' subject '_task-tonecounting_bold.nii,88']
                                                    ['/Users/' user '/Desktop/ToneCounting/sub-' subject '/func/sub-' subject '_task-tonecounting_bold.nii,89']
                                                    ['/Users/' user '/Desktop/ToneCounting/sub-' subject '/func/sub-' subject '_task-tonecounting_bold.nii,90']
                                                    ['/Users/' user '/Desktop/ToneCounting/sub-' subject '/func/sub-' subject '_task-tonecounting_bold.nii,91']
                                                    ['/Users/' user '/Desktop/ToneCounting/sub-' subject '/func/sub-' subject '_task-tonecounting_bold.nii,92']
                                                    ['/Users/' user '/Desktop/ToneCounting/sub-' subject '/func/sub-' subject '_task-tonecounting_bold.nii,93']
                                                    ['/Users/' user '/Desktop/ToneCounting/sub-' subject '/func/sub-' subject '_task-tonecounting_bold.nii,94']
                                                    ['/Users/' user '/Desktop/ToneCounting/sub-' subject '/func/sub-' subject '_task-tonecounting_bold.nii,95']
                                                    ['/Users/' user '/Desktop/ToneCounting/sub-' subject '/func/sub-' subject '_task-tonecounting_bold.nii,96']
                                                    ['/Users/' user '/Desktop/ToneCounting/sub-' subject '/func/sub-' subject '_task-tonecounting_bold.nii,97']
                                                    ['/Users/' user '/Desktop/ToneCounting/sub-' subject '/func/sub-' subject '_task-tonecounting_bold.nii,98']
                                                    ['/Users/' user '/Desktop/ToneCounting/sub-' subject '/func/sub-' subject '_task-tonecounting_bold.nii,99']
                                                    ['/Users/' user '/Desktop/ToneCounting/sub-' subject '/func/sub-' subject '_task-tonecounting_bold.nii,100']
                                                    ['/Users/' user '/Desktop/ToneCounting/sub-' subject '/func/sub-' subject '_task-tonecounting_bold.nii,101']
                                                    ['/Users/' user '/Desktop/ToneCounting/sub-' subject '/func/sub-' subject '_task-tonecounting_bold.nii,102']
                                                    ['/Users/' user '/Desktop/ToneCounting/sub-' subject '/func/sub-' subject '_task-tonecounting_bold.nii,103']
                                                    ['/Users/' user '/Desktop/ToneCounting/sub-' subject '/func/sub-' subject '_task-tonecounting_bold.nii,104']
                                                    }
                                                    }';
%%
matlabbatch{1}.spm.spatial.realign.estwrite.eoptions.quality = 0.9;
matlabbatch{1}.spm.spatial.realign.estwrite.eoptions.sep = 4;
matlabbatch{1}.spm.spatial.realign.estwrite.eoptions.fwhm = 5;
matlabbatch{1}.spm.spatial.realign.estwrite.eoptions.rtm = 1;
matlabbatch{1}.spm.spatial.realign.estwrite.eoptions.interp = 2;
matlabbatch{1}.spm.spatial.realign.estwrite.eoptions.wrap = [0 0 0];
matlabbatch{1}.spm.spatial.realign.estwrite.eoptions.weight = '';
matlabbatch{1}.spm.spatial.realign.estwrite.roptions.which = [2 1];
matlabbatch{1}.spm.spatial.realign.estwrite.roptions.interp = 4;
matlabbatch{1}.spm.spatial.realign.estwrite.roptions.wrap = [0 0 0];
matlabbatch{1}.spm.spatial.realign.estwrite.roptions.mask = 1;
matlabbatch{1}.spm.spatial.realign.estwrite.roptions.prefix = 'r';
matlabbatch{2}.spm.spatial.coreg.estwrite.ref(1) = cfg_dep('Realign: Estimate & Reslice: Mean Image', substruct('.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','rmean'));
matlabbatch{2}.spm.spatial.coreg.estwrite.source = {['/Users/' user '/Desktop/ToneCounting/sub-' subject '/anat/sub-' subject '_T1w.nii,1']};
matlabbatch{2}.spm.spatial.coreg.estwrite.other = {''};
matlabbatch{2}.spm.spatial.coreg.estwrite.eoptions.cost_fun = 'nmi';
matlabbatch{2}.spm.spatial.coreg.estwrite.eoptions.sep = [4 2];
matlabbatch{2}.spm.spatial.coreg.estwrite.eoptions.tol = [0.02 0.02 0.02 0.001 0.001 0.001 0.01 0.01 0.01 0.001 0.001 0.001];
matlabbatch{2}.spm.spatial.coreg.estwrite.eoptions.fwhm = [7 7];
matlabbatch{2}.spm.spatial.coreg.estwrite.roptions.interp = 4;
matlabbatch{2}.spm.spatial.coreg.estwrite.roptions.wrap = [0 0 0];
matlabbatch{2}.spm.spatial.coreg.estwrite.roptions.mask = 0;
matlabbatch{2}.spm.spatial.coreg.estwrite.roptions.prefix = 'r';
matlabbatch{3}.spm.spatial.preproc.channel.vols(1) = cfg_dep('Coregister: Estimate & Reslice: Coregistered Images', substruct('.','val', '{}',{2}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','cfiles'));
matlabbatch{3}.spm.spatial.preproc.channel.biasreg = 0.001;
matlabbatch{3}.spm.spatial.preproc.channel.biasfwhm = 60;
matlabbatch{3}.spm.spatial.preproc.channel.write = [0 1];
matlabbatch{3}.spm.spatial.preproc.tissue(1).tpm = {['/Users/' user '/spm12/tpm/TPM.nii,1']};
matlabbatch{3}.spm.spatial.preproc.tissue(1).ngaus = 1;
matlabbatch{3}.spm.spatial.preproc.tissue(1).native = [1 0];
matlabbatch{3}.spm.spatial.preproc.tissue(1).warped = [0 0];
matlabbatch{3}.spm.spatial.preproc.tissue(2).tpm = {['/Users/' user '/spm12/tpm/TPM.nii,2']};
matlabbatch{3}.spm.spatial.preproc.tissue(2).ngaus = 1;
matlabbatch{3}.spm.spatial.preproc.tissue(2).native = [1 0];
matlabbatch{3}.spm.spatial.preproc.tissue(2).warped = [0 0];
matlabbatch{3}.spm.spatial.preproc.tissue(3).tpm = {['/Users/' user '/spm12/tpm/TPM.nii,3']};
matlabbatch{3}.spm.spatial.preproc.tissue(3).ngaus = 2;
matlabbatch{3}.spm.spatial.preproc.tissue(3).native = [1 0];
matlabbatch{3}.spm.spatial.preproc.tissue(3).warped = [0 0];
matlabbatch{3}.spm.spatial.preproc.tissue(4).tpm = {['/Users/' user '/spm12/tpm/TPM.nii,4']};
matlabbatch{3}.spm.spatial.preproc.tissue(4).ngaus = 3;
matlabbatch{3}.spm.spatial.preproc.tissue(4).native = [1 0];
matlabbatch{3}.spm.spatial.preproc.tissue(4).warped = [0 0];
matlabbatch{3}.spm.spatial.preproc.tissue(5).tpm = {['/Users/' user '/spm12/tpm/TPM.nii,5']};
matlabbatch{3}.spm.spatial.preproc.tissue(5).ngaus = 4;
matlabbatch{3}.spm.spatial.preproc.tissue(5).native = [1 0];
matlabbatch{3}.spm.spatial.preproc.tissue(5).warped = [0 0];
matlabbatch{3}.spm.spatial.preproc.tissue(6).tpm = {['/Users/' user '/spm12/tpm/TPM.nii,6']};
matlabbatch{3}.spm.spatial.preproc.tissue(6).ngaus = 2;
matlabbatch{3}.spm.spatial.preproc.tissue(6).native = [0 0];
matlabbatch{3}.spm.spatial.preproc.tissue(6).warped = [0 0];
matlabbatch{3}.spm.spatial.preproc.warp.mrf = 1;
matlabbatch{3}.spm.spatial.preproc.warp.cleanup = 1;
matlabbatch{3}.spm.spatial.preproc.warp.reg = [0 0.001 0.5 0.05 0.2];
matlabbatch{3}.spm.spatial.preproc.warp.affreg = 'mni';
matlabbatch{3}.spm.spatial.preproc.warp.fwhm = 0;
matlabbatch{3}.spm.spatial.preproc.warp.samp = 3;
matlabbatch{3}.spm.spatial.preproc.warp.write = [0 1];
matlabbatch{3}.spm.spatial.preproc.warp.vox = NaN;
matlabbatch{3}.spm.spatial.preproc.warp.bb = [NaN NaN NaN
                                              NaN NaN NaN];
matlabbatch{4}.spm.spatial.normalise.write.subj.def(1) = cfg_dep('Segment: Forward Deformations', substruct('.','val', '{}',{3}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','fordef', '()',{':'}));
matlabbatch{4}.spm.spatial.normalise.write.subj.resample(1) = cfg_dep('Realign: Estimate & Reslice: Resliced Images (Sess 1)', substruct('.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','sess', '()',{1}, '.','rfiles'));
matlabbatch{4}.spm.spatial.normalise.write.woptions.bb = [-78 -112 -70
                                                          78 76 85];
matlabbatch{4}.spm.spatial.normalise.write.woptions.vox = [3 3 3];
matlabbatch{4}.spm.spatial.normalise.write.woptions.interp = 4;
matlabbatch{4}.spm.spatial.normalise.write.woptions.prefix = 'w';
matlabbatch{5}.spm.spatial.smooth.data(1) = cfg_dep('Normalise: Write: Normalised Images (Subj 1)', substruct('.','val', '{}',{4}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('()',{1}, '.','files'));
matlabbatch{5}.spm.spatial.smooth.fwhm = [6 6 6];
matlabbatch{5}.spm.spatial.smooth.dtype = 0;
matlabbatch{5}.spm.spatial.smooth.im = 0;
matlabbatch{5}.spm.spatial.smooth.prefix = 's';
matlabbatch{6}.spm.stats.fmri_spec.dir = {['/Users/' user '/Desktop/ToneCounting/sub-' subject '/1stLevel']};
matlabbatch{6}.spm.stats.fmri_spec.timing.units = 'secs';
matlabbatch{6}.spm.stats.fmri_spec.timing.RT = 2;
matlabbatch{6}.spm.stats.fmri_spec.timing.fmri_t = 16;
matlabbatch{6}.spm.stats.fmri_spec.timing.fmri_t0 = 8;
matlabbatch{6}.spm.stats.fmri_spec.sess.scans(1) = cfg_dep('Smooth: Smoothed Images', substruct('.','val', '{}',{5}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','files'));
matlabbatch{6}.spm.stats.fmri_spec.sess.cond(1).name = 'ToneCounting';
%%
ToneCounting_run1 = load(['/Users/' user '/Desktop/ToneCounting/sub-' subject '/func/toneCount_run1.txt']);

matlabbatch{6}.spm.stats.fmri_spec.sess.cond(1).onset = ToneCounting_run1(:,1);
%%
matlabbatch{6}.spm.stats.fmri_spec.sess.cond(1).duration = 4;
matlabbatch{6}.spm.stats.fmri_spec.sess.cond(1).tmod = 0;
matlabbatch{6}.spm.stats.fmri_spec.sess.cond(1).pmod = struct('name', {}, 'param', {}, 'poly', {});
matlabbatch{6}.spm.stats.fmri_spec.sess.cond(1).orth = 1;
matlabbatch{6}.spm.stats.fmri_spec.sess.cond(2).name = 'ToneProbe';

ToneProbe_run1 = load(['/Users/' user '/Desktop/ToneCounting/sub-' subject '/func/toneProbe_run1.txt']);

matlabbatch{6}.spm.stats.fmri_spec.sess.cond(2).onset = ToneProbe_run1(:,1);
matlabbatch{6}.spm.stats.fmri_spec.sess.cond(2).duration = ToneProbe_run1(:,2);
matlabbatch{6}.spm.stats.fmri_spec.sess.cond(2).tmod = 0;
matlabbatch{6}.spm.stats.fmri_spec.sess.cond(2).pmod = struct('name', {}, 'param', {}, 'poly', {});
matlabbatch{6}.spm.stats.fmri_spec.sess.cond(2).orth = 1;
matlabbatch{6}.spm.stats.fmri_spec.sess.multi = {''};
matlabbatch{6}.spm.stats.fmri_spec.sess.regress = struct('name', {}, 'val', {});
matlabbatch{6}.spm.stats.fmri_spec.sess.multi_reg = {''};
matlabbatch{6}.spm.stats.fmri_spec.sess.hpf = 128;
matlabbatch{6}.spm.stats.fmri_spec.fact = struct('name', {}, 'levels', {});
matlabbatch{6}.spm.stats.fmri_spec.bases.fir.length = 20;
matlabbatch{6}.spm.stats.fmri_spec.bases.fir.order = 10;
matlabbatch{6}.spm.stats.fmri_spec.volt = 1;
matlabbatch{6}.spm.stats.fmri_spec.global = 'None';
matlabbatch{6}.spm.stats.fmri_spec.mthresh = 0.8;
matlabbatch{6}.spm.stats.fmri_spec.mask = {''};
matlabbatch{6}.spm.stats.fmri_spec.cvi = 'AR(1)';
matlabbatch{7}.spm.stats.fmri_est.spmmat(1) = cfg_dep('fMRI model specification: SPM.mat File', substruct('.','val', '{}',{6}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','spmmat'));
matlabbatch{7}.spm.stats.fmri_est.write_residuals = 0;
matlabbatch{7}.spm.stats.fmri_est.method.Classical = 1;
matlabbatch{8}.spm.stats.con.spmmat(1) = cfg_dep('Model estimation: SPM.mat File', substruct('.','val', '{}',{7}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','spmmat'));
matlabbatch{8}.spm.stats.con.consess{1}.tcon.name = 'ToneCount';
matlabbatch{8}.spm.stats.con.consess{1}.tcon.weights = [1 0];
matlabbatch{8}.spm.stats.con.consess{1}.tcon.sessrep = 'none';
matlabbatch{8}.spm.stats.con.consess{2}.tcon.name = 'ToneProbe';
matlabbatch{8}.spm.stats.con.consess{2}.tcon.weights = [0 1];
matlabbatch{8}.spm.stats.con.consess{2}.tcon.sessrep = 'none';
matlabbatch{8}.spm.stats.con.consess{3}.tcon.name = 'ToneCount-ToneProbe';
matlabbatch{8}.spm.stats.con.consess{3}.tcon.weights = [1 -1];
matlabbatch{8}.spm.stats.con.consess{3}.tcon.sessrep = 'none';
matlabbatch{8}.spm.stats.con.delete = 0;

spm_jobman('run', matlabbatch);

end
