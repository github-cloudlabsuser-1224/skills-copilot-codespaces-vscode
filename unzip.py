import zipfile
import os

def unzip_folder(zip_path, extract_to):
    with zipfile.ZipFile(zip_path, 'r') as zip_ref:
        zip_ref.extractall(extract_to)

if __name__ == "__main__":
    zip_path = r'D:\\files\\repository\\July_2024_ASC_Restated_Prices.08022024.zip'
    extract_to = r'D:\\files\\extracts'
    

    # Ensure the extract directory exists
    os.makedirs(extract_to, exist_ok=True)
    
    # Check if the zip file exists
    if not os.path.isfile(zip_path):
        print(f"Error: The zip file {zip_path} does not exist.")
    else:
    # Change the current working directory
        os.chdir(os.path.dirname(zip_path))


    unzip_folder(zip_path, extract_to)
    print(f"Unzipped {zip_path} to {extract_to}")