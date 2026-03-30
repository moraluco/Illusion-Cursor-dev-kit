# TArray

## Inheritance

TArray → FUNCTIONS → Reset

## Description

void Reset( int 	ReservedSize	 = 	0 	) opIndex const T& opIndex( int 	Index 	) const opAssign TArray<T>& opAssign( TArray<T> 	Other 	) opEquals bool opEquals( TArray<T> 	Other 	) const Add void Add( const 	T&in 	Value 	) Append void Append( TArray<T> 	Other 	) Shuffle void Shuffle() Swap void Swap( int 	FirstIndexToSwap, int 	SecondIndexToSwap 	)

Swap the element at index FirstIndexToSwap with the element at index SecondIndexToSwap.

MoveAssignFrom void MoveAssignFrom( TArray<T>& 	OtherArray 	)

Perform a move-assign from the passed in array into this array.  The passed in array will be emptied in the process as its memory is moved over.

IsValidIndex bool IsValidIndex( int 	Index 	) const Last const T& Last( int 	IndexFromEnd	 = 	0 	) const Last T& Last( int 	IndexFromEnd	 = 	0 	) Insert void Insert( const 	T&in 	Value, 	int 	Index	 = 	0 	) AddUnique bool AddUnique( const 	T&in 	Value 	)

Will first do a check if the object already is in the array.  Returns 'True' if the object is added.

Empty void Empty( int 	ReservedSize	 = 	0 	) opIndex T& opIndex( int 	Index 	) Reserve void Reserve( int 	ReservedSize	 = 	0 	) SetNum void SetNum( int 	NewNum	 = 	0 	) Copy void Copy( TArray<T> 	SourceArray, int 	SourceIndex, int 	Count, int 	TargetIndex	 = 	0 	) SetNumZeroed void SetNumZeroed( int 	NewNum	 = 	0 	) FindIndex int FindIndex( const 	T&in 	Value 	) const

Find the first index that contains an element with the given value.  If no element matches the value, it will return -1.

Contains bool Contains( const 	T&in 	Value 	) const RemoveSingle int RemoveSingle( const 	T&in 	Value 	) const Remove int Remove( const 	T&in 	Value 	) const RemoveSingleSwap int RemoveSingleSwap( const 	T&in 	Value 	) const RemoveSwap int RemoveSwap( const 	T&in 	Value 	) const RemoveAt void RemoveAt( int 	Index 	) RemoveAtSwap void RemoveAtSwap( int 	Index 	) Sort void Sort( bool 	bDescendingOrder	 = 	false 	) Num int Num() const Iterator TArrayIterator<T> Iterator() const
