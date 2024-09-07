import random
import pandas as pd
from faker import Faker
import os
from google.colab import files  # Import untuk download di Colab

# Initialize Faker
fake = Faker()

# Number of records to generate
num_users = 10
num_ads = 15
num_bids = 20

valid_location_ids = [3171, 3172, 3173, 3174, 3175, 3573, 3578, 3471, 3273, 1371, 1375, 6471, 6472, 7371, 5171]

# Dummy Data Generation

# 1. Users
users_data = []
for i in range(num_users):
    users_data.append({
        "user_id": i + 1,
        "name": fake.name(),
        "contact_info": fake.phone_number(),
        "location_id": random.choice(valid_location_ids) 
    })

users_df = pd.DataFrame(users_data)

# 2. Ads (Iklan)
ads_data = []
for i in range(num_ads):
    ads_data.append({
        "ad_id": i + 1,
        "user_id": random.randint(1, num_users),
        "product_id": random.randint(1, 50),  # assuming 50 cars in the car_product table
        "title": fake.catch_phrase(),
        "description": fake.text(),
        "price": round(random.uniform(50000000, 300000000), 2),  # Random price between 50 million and 300 million
        "is_negotiable": random.choice([True, False])
    })

ads_df = pd.DataFrame(ads_data)

# 3. Bids (Penawaran)
bids_data = []
for i in range(num_bids):
    bids_data.append({
        "bid_id": i + 1,
        "ad_id": random.randint(1, num_ads),
        "user_id": random.randint(1, num_users),
        "bid_amount": round(random.uniform(40000000, 290000000), 2),  # Random bid amount
        "bid_time": fake.date_time_this_year()
    })

bids_df = pd.DataFrame(bids_data)

# Save all dataframes to CSV
output_dir = './'  # Save in the current working directory
users_path = os.path.join(output_dir, 'users_dummy.csv')
ads_path = os.path.join(output_dir, 'ads_dummy.csv')
bids_path = os.path.join(output_dir, 'bids_dummy.csv')

users_df.to_csv(users_path, index=False)
ads_df.to_csv(ads_path, index=False)
bids_df.to_csv(bids_path, index=False)

# Download the files
files.download(users_path)
files.download(ads_path)
files.download(bids_path)

