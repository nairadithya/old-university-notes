
# Table of Contents

1.  [Notes](#orgfa7d5a9)
    1.  [Iris Data Classification](#org5835169)
    2.  [Data Pre-Processing](#orga94a4ce)
        1.  [Handling Missing Values (Imputation)](#org96fe2e6)



<a id="orgfa7d5a9"></a>

# Notes


<a id="org5835169"></a>

## Iris Data Classification

    import pandas as pd
    import numpy as np
    from sklearn.model_selection import train_test_split
    
    irisdata = pd.read_csv('iris.csv')
    
    test, train = train_test_split(irisdata, train_size=0.8, test_size=0.2)
    
    print(np.size(test))
    print(np.size(train))
    print(irisdata.describe())


<a id="orga94a4ce"></a>

## Data Pre-Processing


<a id="org96fe2e6"></a>

### Handling Missing Values (Imputation)

When the no. of missing values in a feature or on a whole in a dataset, is beyond a certain percentage. It might lead to wrong interpretations and might misguide the ML models.
Hence it is essential to handle the missing values.

1.  CREATING A DATAFRAME

        import pandas as pd
        import numpy as np
        
        # Load the Titanic dataset
        df = pd.read_csv('titanic.csv')
        
        # Display the first few rows of the dataset
        print("First few rows of the dataset:")
        print(df.head())
        print(df.shape)
    
    This dataset is not complete, Cabin and Age have values that are unfilled. We can verify this here.
    
        
        # Identify missing values
        print("\nMissing values in each column:")
        print(df.isnull().sum())

2.  There are two main methods in dealing with missing values.

    1.  Dropping rows with missing values.
    2.  Filling the empty missing values with zeros.
    
        # Method 1: Drop rows with missing values
        df_dropped = df.dropna()
        print("\n METHOD 1 Shape of dataset after dropping rows with missing values:", df_dropped.shape)
        
        # Method 2: Fill missing values with a specific value (e.g., 0)
        df_filled_zeros = df.fillna(0)
        print("\nMETHOD 2 Missing values filled with 0:")
        print(df_filled_zeros.isnull().sum())
    
        # Method 3: Fill missing values with the mean (for numerical columns)
        df['Age'].fillna(df['Age'].mean(), inplace=True)
        print("\nMETHOD 3 Missing values in 'Age' column after filling with mean:")
        print(df['Age'].isnull().sum())
        
        # Method 4: Fill missing values with the most frequent value (mode)
        df['Embarked'].fillna(df['Embarked'].mode()[0], inplace=True)
        print("\nMETHOD 4 Missing values in 'Embarked' column after filling with mode:")
        print(df['Embarked'].isnull().sum())
    
        # Method 5: Forward fill method
        df_ffill = df.fillna(method='ffill')
        print("\nMethod 5 Missing values handled using forward fill method:")
        print(df_ffill.isnull().sum())
        
        # Method 6: Backward fill method
        df_bfill = df.fillna(method='bfill')
        print("\nMethod 6 Missing values handled using backward fill method:")
        print(df_bfill.isnull().sum())
        print("*****************")
    
        
    
        ###NORMALIZATION
    
        
        ####NORMALISING A ASET OF VALUES USING MIN MAX NORMALIZATION
        import numpy as np
        from sklearn.preprocessing import MinMaxScaler
        
        # Example usage:
        data = np.array([2, 5, 8, 11, 14]).reshape(-1, 1)  # Reshape to 2D array for scaler
        
        # Initialize the MinMaxScaler
        scaler = MinMaxScaler()
        
        # Apply Min-Max normalization
        normalized_data = scaler.fit_transform(data)
        
        # Flatten the normalized data to 1D array
        normalized_data = normalized_data.flatten()
        
        print(normalized_data)
    
        
    
        ####NORMALISING A SET OF VALUES USING Z-SCORE NORMALIZATION
        import numpy as np
        from sklearn.preprocessing import StandardScaler
        
        # Example usage:
        data = np.array([2, 5, 8, 11, 14]).reshape(-1, 1)  # Reshape to 2D array for scaler
        
        # Initialize the StandardScaler
        scaler = StandardScaler()
        
        # Apply Z-score normalization
        normalized_data = scaler.fit_transform(data)
        
        # Flatten the normalized data to 1D array
        normalized_data = normalized_data.flatten()
        
        print(normalized_data)
    
        ### NORMALIZING CERTAIN COLUMNS IN THE DATAFRAME
        
        # Initialize the MinMaxScaler
        scaler = MinMaxScaler()
        
        # List of columns to be normalized
        columns_to_normalize = ['Age', 'Fare']
        
        # Apply Min-Max normalization
        df[columns_to_normalize] = scaler.fit_transform(df[columns_to_normalize])
        
        print("\nDataFrame after Min-Max normalization:")
        print(df)
    
        #####SAMPLING
    
        ###RANDOM SAMPLING
        import random
        
        # Sample data
        population = list(range(1, 101))  # Population from 1 to 100
        sample_size = 10  # Size of the sample
        
        # Simple random sampling
        sample = random.sample(population, sample_size)
        print("Simple Random Sample:", sample)
    
        ###STRATIFIED SAMPLING
        
        import random
        
        # Sample data with strata
        strata_data = {
            'stratum1': [1, 2, 3, 4, 5],
            'stratum2': [6, 7, 8, 9, 10],
        }
        
        # Sample size per stratum
        sample_size_per_stratum = 2
        
        # Stratified sampling
        sample = []
        for stratum, data in strata_data.items():
            stratum_sample = random.sample(data, sample_size_per_stratum)
            sample.extend(stratum_sample)
        
        print("Stratified Sample:", sample)
    
        # Sample data
        data = list(range(1, 101))  # Data from 1 to 100
        n = 5  # Every nth data point to be included in the sample
        
        # Systematic sampling
        sample = data[::n]
        print("Systematic Sample:", sample)
    
        import random
        
        # Sample data with clusters
        clusters = {
            'cluster1': [1, 2, 3],
            'cluster2': [4, 5, 6],
            'cluster3': [7, 8, 9],
        }
        
        # Number of clusters to sample
        clusters_to_sample = 2
        
        # Cluster sampling
        selected_clusters = random.sample(list(clusters.keys()), clusters_to_sample)
        print("chosen clusters ", selected_clusters)
        sample = []
        for cluster in selected_clusters:
            sample.extend(clusters[cluster])
        
        print("Cluster Sample:", sample)
    
        ####BINNING
    
        import pandas as pd
        from google.colab import drive
        drive.mount('/content/drive')
        %cd /content/drive/My\ Drive/data-preprocessing/
        df = pd.read_csv('bollywood.csv')
    
        import pandas as pd
        
        # Assuming 'df' is your DataFrame containing the dataset
        budget_bins = [0, 10, 20, float('inf')]  # Define your budget bins
        budget_labels = ['Low Budget', 'Medium Budget', 'High Budget']  # Labels for the bins
        
        df['BudgetBin'] = pd.cut(df['Budget'], bins=budget_bins, labels=budget_labels)
    
        df.head(10)
    
    ![img](ce9e3744fc6a3bb5507b36f5f296493e45f8052b.png)
    
        collection_bins = [0, 20, 40, 60, float('inf')]  # Define your collection bins
        collection_labels = ['Low Collection', 'Medium Collection', 'High Collection', 'Very High Collection']  # Labels for the bins
        
        df['CollectionBin'] = pd.cut(df['BoxOfficeCollection'], bins=collection_bins, labels=collection_labels)
        df.head(10)
    
    ![img](6d1b533234c55700921c51ec2564d6917a09ab42.png)

