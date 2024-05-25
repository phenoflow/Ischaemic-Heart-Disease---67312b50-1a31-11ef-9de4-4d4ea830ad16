# Kethryn E Mansfield, Dorothea Nitsch, Liam Smeeth, Krishnan Bhaskaram, Laurie A Tomlinson, 2024.

import sys, csv, re

codes = [{"code":"9Ob9.00","system":"readv2"},{"code":"662..11","system":"readv2"},{"code":"9Ob8.00","system":"readv2"},{"code":"662Z.00","system":"readv2"},{"code":"9Ob..00","system":"readv2"},{"code":"8I37.00","system":"readv2"},{"code":"662..00","system":"readv2"},{"code":"9Ob2.00","system":"readv2"},{"code":"9Ob6.00","system":"readv2"},{"code":"9Ob0.00","system":"readv2"},{"code":"9Ob1.00","system":"readv2"},{"code":"662N.00","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('ischaemic-heart-disease-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["ischaemic-heart-disease-monitoring---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["ischaemic-heart-disease-monitoring---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["ischaemic-heart-disease-monitoring---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
