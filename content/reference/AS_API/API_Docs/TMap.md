# TMap

## Inheritance

TMap → FUNCTIONS → FindOrAdd

## Description

V& FindOrAdd( const 	K&in 	Key 	)

Find the value associated with the key. If none exists, add and return a new value using the default constructor.

opIndex const V& opIndex( const 	K&in 	Key 	) const Add void Add( const 	K&in 	Key, const 	V&in 	Value 	) Contains bool Contains( const 	K&in 	Key 	) const RemoveAndCopyValue bool RemoveAndCopyValue( const 	K&in 	Key, 	V& 	OutValue 	) Remove bool Remove( const 	K&in 	Key 	) Num int Num() const opIndex V& opIndex( const 	K&in 	Key 	) FindOrAdd V& FindOrAdd( const 	K&in 	Key, const 	V&in 	DefaultValue 	)

Find the value associated with the key. If none exists, add and return new value set to DefaultValue.

Find bool Find( const 	K&in 	Key, 	V& 	OutValue 	) const opAssign TMap<K,V>& opAssign( TMap<K,V> 	Other 	) Empty void Empty( int 	Slack	 = 	0 	) Reset void Reset() Iterator TMapIterator<K,V> Iterator() Iterator const TMapIterator<K,V> Iterator() const
