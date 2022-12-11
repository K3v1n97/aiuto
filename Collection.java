package it.cefi.models;

import java.util.Random;

public class Collection {
	
	private static final Random random = new Random();

	private int index;
	
	private static final int[] randomNumbers = new int[10];
	
	public int[] getRandomNumbers() {
		setRandomNumbers(randomNumbers);
		return randomNumbers;
	}

	public void setRandomNumbers(int[] randomNumbers) {
				
		for(int i = 0; i < 10; i++) {
			randomNumbers[i] = random.nextInt(0, 100);
		}
		for(int i = 0; i < randomNumbers.length; i++) {
			boolean flag = false;
			for(int j = 0; j < randomNumbers.length - 1; j++) {
				if(randomNumbers[j] > randomNumbers[j + 1]) {
					int temp = randomNumbers[j];
					randomNumbers[j] = randomNumbers[j + 1];
					randomNumbers[j + 1] = temp;
					flag = true;
				}
			}
			if(!flag) break;
		}
	}

	public int getIndex() {
		return index;
	}
	
	public void setIndex(int index) {
		this.index = index;
	}

	public String binarySearch() {
		
		int first = 0;
		int last = randomNumbers.length - 1;
		int mid = (first + last) / 2;
		
		while (first <= last) {
			if(randomNumbers[mid] < index) {
				first = mid + 1;
			} else if (randomNumbers[mid] == index) {
				return "Element is found at index: " +  mid;
			} else {
				last = mid - 1;
			}
			mid = (first + last) / 2;
		}
		if(first > last) {
			return "Element is not found!";
		}
		return "Element is not found!";
		
	}

}
