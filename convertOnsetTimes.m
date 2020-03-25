% %---------------------%
% % Convert Onset Times %
% %---------------------%
% 
% % Converts timing files from BIDS format into a two-column format that can
% % be read by SPM
% 
% % The columns are:
% % 1. Onset (in seconds); and
% % 2. Duration (in seconds
% 
% 
% % Run this script from the directory that contains all of your subjects
% % (i.e., the Flanker directory)

subjects = [01 02 03 04 05 06 07 08 09 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26]; % Replace with a list of all of the subjects you wish to analyze


for subject=subjects
    
    subject = num2str(subject, '%02d'); % Zero-pads each number so that the subject ID is 2 characters long

    cd(['sub-' subject '/func']) % Navigate to the subject's directory

    Run1_onsetTimes = tdfread(['sub-' subject '_task-flanker_run-1_events.tsv'], '\t'); % Read onset times file
    Run1_onsetTimes.trial_type = string(Run1_onsetTimes.trial_type); % Convert char array to string array, to make logical comparisons easier

    Run1_Incongruent = [];
    Run1_Congruent = [];

    for i = 1:length(Run1_onsetTimes.onset)
        if strtrim(Run1_onsetTimes.trial_type(i,:)) == 'incongruent_correct'
            Run1_Incongruent = [Run1_Incongruent; Run1_onsetTimes.onset(i,:) Run1_onsetTimes.duration(i,:)];
        elseif strtrim(Run1_onsetTimes.trial_type(i,:)) == 'incongruent_incorrect'
            Run1_Incongruent = [Run1_Incongruent; Run1_onsetTimes.onset(i,:) Run1_onsetTimes.duration(i,:)];
        elseif strtrim(Run1_onsetTimes.trial_type(i,:)) == 'congruent_correct'
            Run1_Congruent = [Run1_Congruent; Run1_onsetTimes.onset(i,:) Run1_onsetTimes.duration(i,:)];
        elseif strtrim(Run1_onsetTimes.trial_type(i,:)) == 'congruent_incorrect'
            Run1_Congruent = [Run1_Congruent; Run1_onsetTimes.onset(i,:) Run1_onsetTimes.duration(i,:)];
        end
    end

    Run2_onsetTimes = tdfread(['sub-' subject '_task-flanker_run-1_events.tsv'], '\t');
    Run2_onsetTimes.trial_type = string(Run2_onsetTimes.trial_type);

    Run2_Incongruent = [];
    Run2_Congruent = [];

    for i = 1:length(Run2_onsetTimes.onset)
        if strtrim(Run2_onsetTimes.trial_type(i,:)) == 'incongruent_correct'
            Run2_Incongruent = [Run2_Incongruent; Run2_onsetTimes.onset(i,:) Run2_onsetTimes.duration(i,:)];
        elseif strtrim(Run2_onsetTimes.trial_type(i,:)) == 'incongruent_incorrect'
            Run2_Incongruent = [Run2_Incongruent; Run2_onsetTimes.onset(i,:) Run2_onsetTimes.duration(i,:)];
        elseif strtrim(Run2_onsetTimes.trial_type(i,:)) == 'congruent_correct'
            Run2_Congruent = [Run2_Congruent; Run2_onsetTimes.onset(i,:) Run2_onsetTimes.duration(i,:)];
        elseif strtrim(Run2_onsetTimes.trial_type(i,:)) == 'congruent_incorrect'
            Run2_Congruent = [Run2_Congruent; Run2_onsetTimes.onset(i,:) Run2_onsetTimes.duration(i,:)];
        end
    end


    % Save timing files into text files

    save('incongruent_run1.txt', 'Run1_Incongruent');
    save('incongruent_run2.txt', 'Run2_Incongruent');
    save('congruent_run1.txt', 'Run1_Congruent');
    save('congruent_run2.txt', 'Run2_Congruent');

    % Go back to Flanker directory

    cd ../..

end