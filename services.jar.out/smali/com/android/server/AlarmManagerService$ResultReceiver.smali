.class Lcom/android/server/AlarmManagerService$ResultReceiver;
.super Ljava/lang/Object;
.source "AlarmManagerService.java"

# interfaces
.implements Landroid/app/PendingIntent$OnFinished;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ResultReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AlarmManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/AlarmManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 1029
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSendFinished(Landroid/app/PendingIntent;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 19
    .parameter "pi"
    .parameter "intent"
    .parameter "resultCode"
    .parameter "resultData"
    .parameter "resultExtras"

    .prologue
    .line 1032
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    #getter for: Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v11}, Lcom/android/server/AlarmManagerService;->access$300(Lcom/android/server/AlarmManagerService;)Ljava/lang/Object;

    move-result-object v12

    monitor-enter v12

    .line 1033
    :try_start_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    move-object/from16 v0, p1

    #calls: Lcom/android/server/AlarmManagerService;->getStatsLocked(Landroid/app/PendingIntent;)Lcom/android/server/AlarmManagerService$BroadcastStats;
    invoke-static {v11, v0}, Lcom/android/server/AlarmManagerService;->access$2000(Lcom/android/server/AlarmManagerService;Landroid/app/PendingIntent;)Lcom/android/server/AlarmManagerService$BroadcastStats;

    move-result-object v3

    .line 1034
    .local v3, bs:Lcom/android/server/AlarmManagerService$BroadcastStats;
    if-eqz v3, :cond_1

    .line 1035
    iget v11, v3, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    add-int/lit8 v11, v11, -0x1

    iput v11, v3, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    .line 1036
    iget v11, v3, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    if-gtz v11, :cond_1

    .line 1037
    const/4 v11, 0x0

    iput v11, v3, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    .line 1038
    iget-wide v13, v3, Lcom/android/server/AlarmManagerService$BroadcastStats;->aggregateTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v15

    iget-wide v0, v3, Lcom/android/server/AlarmManagerService$BroadcastStats;->startTime:J

    move-wide/from16 v17, v0

    sub-long v15, v15, v17

    add-long/2addr v13, v15

    iput-wide v13, v3, Lcom/android/server/AlarmManagerService$BroadcastStats;->aggregateTime:J

    .line 1040
    new-instance v5, Landroid/content/Intent$FilterComparison;

    move-object/from16 v0, p2

    invoke-direct {v5, v0}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 1041
    .local v5, fc:Landroid/content/Intent$FilterComparison;
    iget-object v11, v3, Lcom/android/server/AlarmManagerService$BroadcastStats;->filterStats:Ljava/util/HashMap;

    invoke-virtual {v11, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/AlarmManagerService$FilterStats;

    .line 1042
    .local v6, fs:Lcom/android/server/AlarmManagerService$FilterStats;
    if-nez v6, :cond_0

    .line 1043
    new-instance v6, Lcom/android/server/AlarmManagerService$FilterStats;

    .end local v6           #fs:Lcom/android/server/AlarmManagerService$FilterStats;
    const/4 v11, 0x0

    invoke-direct {v6, v11}, Lcom/android/server/AlarmManagerService$FilterStats;-><init>(Lcom/android/server/AlarmManagerService$1;)V

    .line 1044
    .restart local v6       #fs:Lcom/android/server/AlarmManagerService$FilterStats;
    iget-object v11, v3, Lcom/android/server/AlarmManagerService$BroadcastStats;->filterStats:Ljava/util/HashMap;

    invoke-virtual {v11, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1046
    :cond_0
    iget v11, v6, Lcom/android/server/AlarmManagerService$FilterStats;->count:I

    add-int/lit8 v11, v11, 0x1

    iput v11, v6, Lcom/android/server/AlarmManagerService$FilterStats;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1049
    .end local v5           #fc:Landroid/content/Intent$FilterComparison;
    .end local v6           #fs:Lcom/android/server/AlarmManagerService$FilterStats;
    :cond_1
    const/4 v8, 0x0

    .line 1050
    .local v8, pkg:Ljava/lang/String;
    const/4 v10, 0x0

    .line 1052
    .local v10, uid:I
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v8

    .line 1053
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    #getter for: Lcom/android/server/AlarmManagerService;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/android/server/AlarmManagerService;->access$100(Lcom/android/server/AlarmManagerService;)Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 1054
    .local v9, pm:Landroid/content/pm/PackageManager;
    const/16 v11, 0x80

    invoke-virtual {v9, v8, v11}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 1056
    .local v2, appInfo:Landroid/content/pm/ApplicationInfo;
    iget v10, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1057
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    #getter for: Lcom/android/server/AlarmManagerService;->mTriggeredUids:Ljava/util/ArrayList;
    invoke-static {v11}, Lcom/android/server/AlarmManagerService;->access$1900(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;

    move-result-object v11

    new-instance v13, Ljava/lang/Integer;

    invoke-direct {v13, v10}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1061
    .end local v2           #appInfo:Landroid/content/pm/ApplicationInfo;
    .end local v9           #pm:Landroid/content/pm/PackageManager;
    :goto_0
    :try_start_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    #getter for: Lcom/android/server/AlarmManagerService;->mBlockedUids:Ljava/util/ArrayList;
    invoke-static {v11}, Lcom/android/server/AlarmManagerService;->access$2600(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;

    move-result-object v11

    new-instance v13, Ljava/lang/Integer;

    invoke-direct {v13, v10}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 1062
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    #getter for: Lcom/android/server/AlarmManagerService;->mBlockedUids:Ljava/util/ArrayList;
    invoke-static {v11}, Lcom/android/server/AlarmManagerService;->access$2600(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;

    move-result-object v11

    new-instance v13, Ljava/lang/Integer;

    invoke-direct {v13, v10}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1075
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    #getter for: Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/LinkedList;
    invoke-static {v11}, Lcom/android/server/AlarmManagerService;->access$1800(Lcom/android/server/AlarmManagerService;)Ljava/util/LinkedList;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 1076
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    #getter for: Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I
    invoke-static {v11}, Lcom/android/server/AlarmManagerService;->access$1600(Lcom/android/server/AlarmManagerService;)I

    move-result v11

    if-eqz v11, :cond_3

    .line 1078
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    #getter for: Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/LinkedList;
    invoke-static {v11}, Lcom/android/server/AlarmManagerService;->access$1800(Lcom/android/server/AlarmManagerService;)Ljava/util/LinkedList;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/LinkedList;->peekFirst()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/PendingIntent;

    .line 1079
    .local v7, nowInFlight:Landroid/app/PendingIntent;
    if-eqz v7, :cond_5

    .line 1080
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v11, v7}, Lcom/android/server/AlarmManagerService;->setWakelockWorkSource(Landroid/app/PendingIntent;)V

    .line 1091
    .end local v7           #nowInFlight:Landroid/app/PendingIntent;
    :cond_3
    :goto_2
    monitor-exit v12

    .line 1092
    return-void

    .line 1058
    :catch_0
    move-exception v4

    .line 1059
    .local v4, ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v11, "AlarmManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "onSendFinished NameNotFoundException Pkg = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1091
    .end local v3           #bs:Lcom/android/server/AlarmManagerService$BroadcastStats;
    .end local v4           #ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v8           #pkg:Ljava/lang/String;
    .end local v10           #uid:I
    :catchall_0
    move-exception v11

    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v11

    .line 1064
    .restart local v3       #bs:Lcom/android/server/AlarmManagerService$BroadcastStats;
    .restart local v8       #pkg:Ljava/lang/String;
    .restart local v10       #uid:I
    :cond_4
    :try_start_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    #getter for: Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I
    invoke-static {v11}, Lcom/android/server/AlarmManagerService;->access$1600(Lcom/android/server/AlarmManagerService;)I

    move-result v11

    if-lez v11, :cond_2

    .line 1065
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-static {v11}, Lcom/android/server/AlarmManagerService;->access$1610(Lcom/android/server/AlarmManagerService;)I

    .line 1066
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    #getter for: Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I
    invoke-static {v11}, Lcom/android/server/AlarmManagerService;->access$1600(Lcom/android/server/AlarmManagerService;)I

    move-result v11

    if-nez v11, :cond_2

    .line 1067
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    #getter for: Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v11}, Lcom/android/server/AlarmManagerService;->access$1700(Lcom/android/server/AlarmManagerService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v11

    invoke-virtual {v11}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_1

    .line 1083
    .restart local v7       #nowInFlight:Landroid/app/PendingIntent;
    :cond_5
    const-string v11, "AlarmManager"

    const-string v13, "Alarm wakelock still held but sent queue empty"

    invoke-static {v11, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1085
    :try_start_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    #getter for: Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v11}, Lcom/android/server/AlarmManagerService;->access$1700(Lcom/android/server/AlarmManagerService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v11

    const/4 v13, 0x0

    invoke-virtual {v11, v13}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 1086
    :catch_1
    move-exception v4

    .line 1087
    .local v4, ex:Ljava/lang/IllegalArgumentException;
    :try_start_5
    invoke-virtual {v4}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2
.end method
