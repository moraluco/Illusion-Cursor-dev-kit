# HealthSnapshot

## Inheritance

HealthSnapshot

## Description

PERFORMANCE | HEALTHSNAPSHOT StartPerformanceSnapshots static void HealthSnapshot::StartPerformanceSnapshots()

Begins capturing FPS charts that can be used to include performance data in a HealthSnapshot. If snapshots are already running clears all accumulated performance data

StopPerformanceSnapshots static void HealthSnapshot::StopPerformanceSnapshots()

Stops capturing FPS charts only if StartHealthSnapshotChart has first been called. Does nothing if FPS charts are not running. HealthSnapshots captured after this is called will not include performance stats.

LogPerformanceSnapshot static void HealthSnapshot::LogPerformanceSnapshot( const 	FString 	SnapshotTitle, 	bool 	bResetStats	 = 	true 	)

Writes a snapshot to the log. Captures memory stats by default. Also captures performance stats if called after StartHealthSnapshotChart and before SopHealthSnapshotChart.

Parameters SnapshotTitle const FString

The name to be given to the new HealthSnapshot.
