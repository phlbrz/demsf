# DEMSF - Download and extract Microsoft Sharepoint file

I've created `bash` utility scripts designed for SREs, DevOps, and Developers to download files from a Microsoft Sharepoint repository.  
These scripts are primarily intended for automation in CI pipelines or local setups (developer environment).  
As the Sharepoint link I share is public and doesn't require authentication, the utility provides seamless access.  
The current implementation utilizes Wget for downloading and Unzip for extraction, but if you prefer an alternative extractor, please don't hesitate to let me know by raising an issue.

## Repository structure

```bash
tree demsf/

demsf/
├── examples
│   ├── call-download.sh # Example how to use download-sharepoint-file.sh in your bash script.
│   └── extract-zip.sh # Example how to use extract-zip.sh in your bash script.
├── lib
│   ├── download-sharepoint-file.sh # Download a Microsoft Sharepoint File.
│   ├── logging.sh # Logging utility.
│   └── unzip.sh # Unzip a file downloaded from Microsoft Sharepoint.
├── LICENSE
└── README.md
```

## Requirements

- Linux
- Bash
- Wget
- Unzip

## How to use

- Create your workspace

```bash
mkdir $HOME/workspace/
cd $HOME/workspace/
```

- Clone this repository

```bash
git clone https://github.com/phlbrz/demsf.git
cd demsf
```

- Script `lib/download-sharepoint-file.sh`: Download a Microsoft Sharepoint File

This script will download the file from Microsoft Sharepoint.  
It has only 3 parameters, `OUTPUT_FOLDER`, `OUTPUT_FILENAME` and `URL`, see the example below:

```bash
OUTPUT_FOLDER="/home/user/workspace/demsf_output/"
OUPUT_FILENAME="file-name.extension-you-want"
URL="https://some-shared-repo.sharepoint.com/:u:/s/SharedRepo/XXXxXXxXxXxXxxXxXxxxxxxXXx1xxxx2X3X4XxxxXXxXXX?e=XXxxX1"

chmod +x ./examples/call-download.sh

./examples/call-download.sh "$OUTPUT_FOLDER" "$OUTPUT_FILENAME" "$URL"
```

- Script `lib/unzip.sh`: Unzip a file downloaded from Microsoft Sharepoint

This scripts uses the script `download-sharepoint-file.sh` under the hood.  
It accepts the same 3 parameters, `OUTPUT_FOLDER`, `OUTPUT_FILENAME` and `URL`. Take a look at the example below:

```bash
OUTPUT_FOLDER="/home/user/workspace/demsf_output/"
OUPUT_FILENAME="file-name.extension-you-want"
URL="https://some-shared-repo.sharepoint.com/:u:/s/SharedRepo/XXXxXXxXxXxXxxXxXxxxxxxXXx1xxxx2X3X4XxxxXXxXXX?e=XXxxX1"

chmod +x ./examples/extract-zip.sh

./examples/extract-zip.sh "$OUTPUT_FOLDER" "$OUTPUT_FILENAME" "$URL"
```

Sources:

- <https://stackoverflow.com/questions/24924014/download-file-folder-from-sharepoint-using-curl-wget-automatically>
