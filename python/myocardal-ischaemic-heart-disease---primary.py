# Kethryn E Mansfield, Dorothea Nitsch, Liam Smeeth, Krishnan Bhaskaram, Laurie A Tomlinson, 2024.

import sys, csv, re

codes = [{"code":"323Z.00","system":"readv2"},{"code":"G312.00","system":"readv2"},{"code":"G301z00","system":"readv2"},{"code":"G380.00","system":"readv2"},{"code":"G35..00","system":"readv2"},{"code":"G384.00","system":"readv2"},{"code":"G344.00","system":"readv2"},{"code":"G30y.00","system":"readv2"},{"code":"G360.00","system":"readv2"},{"code":"G34y100","system":"readv2"},{"code":"G30..00","system":"readv2"},{"code":"G32..12","system":"readv2"},{"code":"G304.00","system":"readv2"},{"code":"3232","system":"readv2"},{"code":"14A4.00","system":"readv2"},{"code":"G30..17","system":"readv2"},{"code":"G301.00","system":"readv2"},{"code":"322Z.00","system":"readv2"},{"code":"G30X.00","system":"readv2"},{"code":"G38z.00","system":"readv2"},{"code":"G30..15","system":"readv2"},{"code":"G306.00","system":"readv2"},{"code":"3222","system":"readv2"},{"code":"G31y300","system":"readv2"},{"code":"889A.00","system":"readv2"},{"code":"G381.00","system":"readv2"},{"code":"14AH.00","system":"readv2"},{"code":"G30z.00","system":"readv2"},{"code":"G308.00","system":"readv2"},{"code":"Gyu3600","system":"readv2"},{"code":"G32..00","system":"readv2"},{"code":"G350.00","system":"readv2"},{"code":"G32..11","system":"readv2"},{"code":"322..00","system":"readv2"},{"code":"G351.00","system":"readv2"},{"code":"Gyu3400","system":"readv2"},{"code":"14AT.00","system":"readv2"},{"code":"G35X.00","system":"readv2"},{"code":"G38..00","system":"readv2"},{"code":"G353.00","system":"readv2"},{"code":"323..00","system":"readv2"},{"code":"G30yz00","system":"readv2"},{"code":"14A3.00","system":"readv2"},{"code":"G383.00","system":"readv2"},{"code":"I22.9","system":"readv2"},{"code":"I25.6","system":"readv2"},{"code":"I21.4","system":"readv2"},{"code":"I22","system":"readv2"},{"code":"I23.0","system":"readv2"},{"code":"I22.8","system":"readv2"},{"code":"I21.3","system":"readv2"},{"code":"I21.1","system":"readv2"},{"code":"I21.0","system":"readv2"},{"code":"I21","system":"readv2"},{"code":"I24.0","system":"readv2"},{"code":"I22.0","system":"readv2"},{"code":"I21.2","system":"readv2"},{"code":"I25.2","system":"readv2"},{"code":"I21.9","system":"readv2"},{"code":"I23.8","system":"readv2"},{"code":"I22.1","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('ischaemic-heart-disease-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["myocardal-ischaemic-heart-disease---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["myocardal-ischaemic-heart-disease---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["myocardal-ischaemic-heart-disease---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
