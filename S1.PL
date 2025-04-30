print "Current Directory: ", `cd`, "\n";


print "Directory contents:\n";
print `dir`, "\n";


print "Creating new folder...\n";
system("mkdir new_folder");


print "Changing to new_folder...\n";
chdir("new_folder") or die "Failed to change directory: $!";
print "Changed to: ", `cd`, "\n"; # Verify the directory change


print "Creating an empty file...\n";
system("type nul > newfile.txt");


print "Directory contents after file creation:\n";
print `dir`, "\n";

print "Going back and removing the new folder...\n";
chdir("..");
system("rmdir new_folder");


print system('date');

