.class final Landroid/server/BluetoothPanProfileHandler;
.super Ljava/lang/Object;
.source "BluetoothPanProfileHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/server/BluetoothPanProfileHandler$BluetoothPanDevice;
    }
.end annotation


# static fields
.field private static final BLUETOOTH_IFACE_ADDR_START:Ljava/lang/String; = "192.168.44.1"

.field private static final BLUETOOTH_MAX_PAN_CONNECTIONS:I = 0x5

.field private static final BLUETOOTH_PREFIX_LENGTH:I = 0x18

.field private static final DBG:Z = true

.field static final NAP_BRIDGE:Ljava/lang/String; = "pan1"

.field static final NAP_ROLE:Ljava/lang/String; = "nap"

.field private static final TAG:Ljava/lang/String; = "BluetoothPanProfileHandler"

.field public static sInstance:Landroid/server/BluetoothPanProfileHandler;


# instance fields
.field private mBluetoothIfaceAddresses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBluetoothService:Landroid/server/BluetoothService;

.field private mContext:Landroid/content/Context;

.field private mMaxPanDevices:I

.field private final mPanDevices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            "Landroid/server/BluetoothPanProfileHandler$BluetoothPanDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mTetheringOn:Z

.field private mTetheringReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/server/BluetoothService;)V
    .locals 3
    .parameter "context"
    .parameter "service"

    .prologue
    .line 66
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 96
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/server/BluetoothPanProfileHandler;->mTetheringReceiver:Landroid/content/BroadcastReceiver;

    .line 67
    iput-object p1, p0, Landroid/server/BluetoothPanProfileHandler;->mContext:Landroid/content/Context;

    .line 68
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/server/BluetoothPanProfileHandler;->mPanDevices:Ljava/util/HashMap;

    .line 69
    iput-object p2, p0, Landroid/server/BluetoothPanProfileHandler;->mBluetoothService:Landroid/server/BluetoothService;

    .line 70
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/server/BluetoothPanProfileHandler;->mTetheringOn:Z

    .line 71
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/server/BluetoothPanProfileHandler;->mBluetoothIfaceAddresses:Ljava/util/ArrayList;

    .line 73
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e000a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Landroid/server/BluetoothPanProfileHandler;->mMaxPanDevices:I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :goto_0
    return-void

    .line 75
    :catch_0
    move-exception v0

    .line 76
    .local v0, e:Landroid/content/res/Resources$NotFoundException;
    const/4 v1, 0x5

    iput v1, p0, Landroid/server/BluetoothPanProfileHandler;->mMaxPanDevices:I

    goto :goto_0
.end method

.method static synthetic access$002(Landroid/server/BluetoothPanProfileHandler;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-boolean p1, p0, Landroid/server/BluetoothPanProfileHandler;->mTetheringOn:Z

    return p1
.end method

.method static synthetic access$100(Landroid/server/BluetoothPanProfileHandler;)Landroid/content/BroadcastReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Landroid/server/BluetoothPanProfileHandler;->mTetheringReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$200(Landroid/server/BluetoothPanProfileHandler;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Landroid/server/BluetoothPanProfileHandler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private createNewTetheringAddressLocked()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x2

    .line 333
    invoke-virtual {p0}, Landroid/server/BluetoothPanProfileHandler;->getConnectedPanDevices()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget v4, p0, Landroid/server/BluetoothPanProfileHandler;->mMaxPanDevices:I

    if-ne v3, v4, :cond_0

    .line 334
    const-string v3, "Max PAN device connections reached"

    invoke-static {v3}, Landroid/server/BluetoothPanProfileHandler;->debugLog(Ljava/lang/String;)V

    .line 335
    const/4 v1, 0x0

    .line 348
    :goto_0
    return-object v1

    .line 337
    :cond_0
    const-string v1, "192.168.44.1"

    .line 339
    .local v1, address:Ljava/lang/String;
    :goto_1
    iget-object v3, p0, Landroid/server/BluetoothPanProfileHandler;->mBluetoothIfaceAddresses:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 340
    const-string v3, "\\."

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 341
    .local v0, addr:[Ljava/lang/String;
    aget-object v3, v0, v5

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 342
    .local v2, newIp:Ljava/lang/Integer;
    aget-object v3, v0, v5

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 343
    goto :goto_1

    .line 347
    .end local v0           #addr:[Ljava/lang/String;
    .end local v2           #newIp:Ljava/lang/Integer;
    :cond_1
    iget-object v3, p0, Landroid/server/BluetoothPanProfileHandler;->mBluetoothIfaceAddresses:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private static debugLog(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 410
    const-string v0, "BluetoothPanProfileHandler"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    return-void
.end method

.method private disconnectPanServerDevices()Z
    .locals 9

    .prologue
    const/4 v5, 0x1

    .line 173
    const-string v6, "disconnect all PAN devices"

    invoke-static {v6}, Landroid/server/BluetoothPanProfileHandler;->debugLog(Ljava/lang/String;)V

    .line 175
    iget-object v6, p0, Landroid/server/BluetoothPanProfileHandler;->mPanDevices:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 176
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    iget-object v6, p0, Landroid/server/BluetoothPanProfileHandler;->mPanDevices:Ljava/util/HashMap;

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/server/BluetoothPanProfileHandler$BluetoothPanDevice;

    .line 177
    .local v3, panDevice:Landroid/server/BluetoothPanProfileHandler$BluetoothPanDevice;
    #getter for: Landroid/server/BluetoothPanProfileHandler$BluetoothPanDevice;->mState:I
    invoke-static {v3}, Landroid/server/BluetoothPanProfileHandler$BluetoothPanDevice;->access$300(Landroid/server/BluetoothPanProfileHandler$BluetoothPanDevice;)I

    move-result v4

    .line 178
    .local v4, state:I
    const/4 v6, 0x2

    if-ne v4, v6, :cond_0

    #getter for: Landroid/server/BluetoothPanProfileHandler$BluetoothPanDevice;->mLocalRole:I
    invoke-static {v3}, Landroid/server/BluetoothPanProfileHandler$BluetoothPanDevice;->access$400(Landroid/server/BluetoothPanProfileHandler$BluetoothPanDevice;)I

    move-result v6

    if-ne v6, v5, :cond_0

    .line 180
    iget-object v6, p0, Landroid/server/BluetoothPanProfileHandler;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/server/BluetoothService;->getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 182
    .local v2, objectPath:Ljava/lang/String;
    #getter for: Landroid/server/BluetoothPanProfileHandler$BluetoothPanDevice;->mIface:Ljava/lang/String;
    invoke-static {v3}, Landroid/server/BluetoothPanProfileHandler$BluetoothPanDevice;->access$500(Landroid/server/BluetoothPanProfileHandler$BluetoothPanDevice;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x3

    #getter for: Landroid/server/BluetoothPanProfileHandler$BluetoothPanDevice;->mLocalRole:I
    invoke-static {v3}, Landroid/server/BluetoothPanProfileHandler$BluetoothPanDevice;->access$400(Landroid/server/BluetoothPanProfileHandler$BluetoothPanDevice;)I

    move-result v8

    invoke-virtual {p0, v0, v6, v7, v8}, Landroid/server/BluetoothPanProfileHandler;->handlePanDeviceStateChange(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;II)V

    .line 185
    iget-object v6, p0, Landroid/server/BluetoothPanProfileHandler;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v7

    #getter for: Landroid/server/BluetoothPanProfileHandler$BluetoothPanDevice;->mIface:Ljava/lang/String;
    invoke-static {v3}, Landroid/server/BluetoothPanProfileHandler$BluetoothPanDevice;->access$500(Landroid/server/BluetoothPanProfileHandler$BluetoothPanDevice;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v2, v7, v8}, Landroid/server/BluetoothService;->disconnectPanServerDeviceNative(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 188
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "could not disconnect Pan Server Device "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/server/BluetoothPanProfileHandler;->errorLog(Ljava/lang/String;)V

    .line 191
    #getter for: Landroid/server/BluetoothPanProfileHandler$BluetoothPanDevice;->mIface:Ljava/lang/String;
    invoke-static {v3}, Landroid/server/BluetoothPanProfileHandler$BluetoothPanDevice;->access$500(Landroid/server/BluetoothPanProfileHandler$BluetoothPanDevice;)Ljava/lang/String;

    move-result-object v5

    #getter for: Landroid/server/BluetoothPanProfileHandler$BluetoothPanDevice;->mLocalRole:I
    invoke-static {v3}, Landroid/server/BluetoothPanProfileHandler$BluetoothPanDevice;->access$400(Landroid/server/BluetoothPanProfileHandler$BluetoothPanDevice;)I

    move-result v6

    invoke-virtual {p0, v0, v5, v4, v6}, Landroid/server/BluetoothPanProfileHandler;->handlePanDeviceStateChange(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;II)V

    .line 194
    const/4 v5, 0x0

    .line 198
    .end local v0           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v2           #objectPath:Ljava/lang/String;
    .end local v3           #panDevice:Landroid/server/BluetoothPanProfileHandler$BluetoothPanDevice;
    .end local v4           #state:I
    :cond_1
    return v5
.end method

.method private enableTethering(Ljava/lang/String;)Ljava/lang/String;
    .locals 20
    .parameter "iface"

    .prologue
    .line 353
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "updateTetherState:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/server/BluetoothPanProfileHandler;->debugLog(Ljava/lang/String;)V

    .line 355
    const-string/jumbo v17, "network_management"

    invoke-static/range {v17 .. v17}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    .line 356
    .local v5, b:Landroid/os/IBinder;
    invoke-static {v5}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v16

    .line 357
    .local v16, service:Landroid/os/INetworkManagementService;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothPanProfileHandler;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const-string v18, "connectivity"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/ConnectivityManager;

    .line 359
    .local v7, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v7}, Landroid/net/ConnectivityManager;->getTetherableBluetoothRegexs()[Ljava/lang/String;

    move-result-object v6

    .line 362
    .local v6, bluetoothRegexs:[Ljava/lang/String;
    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v9, v0, [Ljava/lang/String;

    .line 364
    .local v9, currentIfaces:[Ljava/lang/String;
    :try_start_0
    invoke-interface/range {v16 .. v16}, Landroid/os/INetworkManagementService;->listInterfaces()[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 370
    const/4 v11, 0x0

    .line 371
    .local v11, found:Z
    move-object v4, v9

    .local v4, arr$:[Ljava/lang/String;
    array-length v14, v4

    .local v14, len$:I
    const/4 v12, 0x0

    .local v12, i$:I
    :goto_0
    if-ge v12, v14, :cond_0

    aget-object v8, v4, v12

    .line 372
    .local v8, currIface:Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 373
    const/4 v11, 0x1

    .line 378
    .end local v8           #currIface:Ljava/lang/String;
    :cond_0
    if-nez v11, :cond_3

    const/4 v3, 0x0

    .line 406
    .end local v4           #arr$:[Ljava/lang/String;
    .end local v11           #found:Z
    .end local v12           #i$:I
    .end local v14           #len$:I
    :cond_1
    :goto_1
    return-object v3

    .line 365
    :catch_0
    move-exception v10

    .line 366
    .local v10, e:Ljava/lang/Exception;
    const-string v17, "BluetoothPanProfileHandler"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Error listing Interfaces :"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    const/4 v3, 0x0

    goto :goto_1

    .line 371
    .end local v10           #e:Ljava/lang/Exception;
    .restart local v4       #arr$:[Ljava/lang/String;
    .restart local v8       #currIface:Ljava/lang/String;
    .restart local v11       #found:Z
    .restart local v12       #i$:I
    .restart local v14       #len$:I
    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 380
    .end local v8           #currIface:Ljava/lang/String;
    :cond_3
    invoke-direct/range {p0 .. p0}, Landroid/server/BluetoothPanProfileHandler;->createNewTetheringAddressLocked()Ljava/lang/String;

    move-result-object v3

    .line 381
    .local v3, address:Ljava/lang/String;
    if-nez v3, :cond_4

    const/4 v3, 0x0

    goto :goto_1

    .line 383
    :cond_4
    const/4 v13, 0x0

    .line 385
    .local v13, ifcg:Landroid/net/InterfaceConfiguration;
    :try_start_1
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/os/INetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object v13

    .line 386
    if-eqz v13, :cond_1

    .line 387
    invoke-virtual {v13}, Landroid/net/InterfaceConfiguration;->getLinkAddress()Landroid/net/LinkAddress;

    move-result-object v15

    .line 388
    .local v15, linkAddr:Landroid/net/LinkAddress;
    const/4 v2, 0x0

    .line 389
    .local v2, addr:Ljava/net/InetAddress;
    if-eqz v15, :cond_5

    invoke-virtual {v15}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    if-eqz v2, :cond_5

    const-string v17, "0.0.0.0"

    invoke-static/range {v17 .. v17}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_5

    const-string v17, "::0"

    invoke-static/range {v17 .. v17}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 392
    :cond_5
    invoke-static {v3}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    .line 394
    :cond_6
    invoke-virtual {v13}, Landroid/net/InterfaceConfiguration;->setInterfaceUp()V

    .line 395
    const-string/jumbo v17, "running"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/net/InterfaceConfiguration;->clearFlag(Ljava/lang/String;)V

    .line 396
    new-instance v17, Landroid/net/LinkAddress;

    const/16 v18, 0x18

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v0, v2, v1}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/net/InterfaceConfiguration;->setLinkAddress(Landroid/net/LinkAddress;)V

    .line 397
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-interface {v0, v1, v13}, Landroid/os/INetworkManagementService;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V

    .line 398
    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Landroid/net/ConnectivityManager;->tether(Ljava/lang/String;)I

    move-result v17

    if-eqz v17, :cond_1

    .line 399
    const-string v17, "BluetoothPanProfileHandler"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Error tethering "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 402
    .end local v2           #addr:Ljava/net/InetAddress;
    .end local v15           #linkAddr:Landroid/net/LinkAddress;
    :catch_1
    move-exception v10

    .line 403
    .restart local v10       #e:Ljava/lang/Exception;
    const-string v17, "BluetoothPanProfileHandler"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Error configuring interface "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", :"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    const/4 v3, 0x0

    goto/16 :goto_1
.end method

.method private static errorLog(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 414
    const-string v0, "BluetoothPanProfileHandler"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    return-void
.end method

.method static getInstance(Landroid/content/Context;Landroid/server/BluetoothService;)Landroid/server/BluetoothPanProfileHandler;
    .locals 1
    .parameter "context"
    .parameter "service"

    .prologue
    .line 82
    sget-object v0, Landroid/server/BluetoothPanProfileHandler;->sInstance:Landroid/server/BluetoothPanProfileHandler;

    if-nez v0, :cond_0

    new-instance v0, Landroid/server/BluetoothPanProfileHandler;

    invoke-direct {v0, p0, p1}, Landroid/server/BluetoothPanProfileHandler;-><init>(Landroid/content/Context;Landroid/server/BluetoothService;)V

    sput-object v0, Landroid/server/BluetoothPanProfileHandler;->sInstance:Landroid/server/BluetoothPanProfileHandler;

    .line 83
    :cond_0
    sget-object v0, Landroid/server/BluetoothPanProfileHandler;->sInstance:Landroid/server/BluetoothPanProfileHandler;

    return-object v0
.end method


# virtual methods
.method allowIncomingTethering()Z
    .locals 2

    .prologue
    .line 91
    invoke-virtual {p0}, Landroid/server/BluetoothPanProfileHandler;->isTetheringOn()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/server/BluetoothPanProfileHandler;->getConnectedPanDevices()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Landroid/server/BluetoothPanProfileHandler;->mMaxPanDevices:I

    if-ge v0, v1, :cond_0

    .line 92
    const/4 v0, 0x1

    .line 93
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method connectPanDevice(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 11
    .parameter "device"

    .prologue
    const/4 v10, 0x0

    const/4 v5, 0x1

    const/4 v9, 0x2

    const/4 v4, 0x0

    .line 140
    iget-object v6, p0, Landroid/server/BluetoothPanProfileHandler;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/server/BluetoothService;->getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 141
    .local v2, objectPath:Ljava/lang/String;
    const-string v6, "BluetoothPanProfileHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "connect PAN("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-virtual {p0, p1}, Landroid/server/BluetoothPanProfileHandler;->getPanDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v6

    if-eqz v6, :cond_0

    .line 143
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " already connected to PAN"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/server/BluetoothPanProfileHandler;->errorLog(Ljava/lang/String;)V

    .line 146
    :cond_0
    const/4 v0, 0x0

    .line 147
    .local v0, connectedCount:I
    iget-object v6, p0, Landroid/server/BluetoothPanProfileHandler;->mPanDevices:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 148
    .local v3, panDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p0, v3}, Landroid/server/BluetoothPanProfileHandler;->getPanDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v6

    if-ne v6, v9, :cond_1

    .line 149
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 152
    .end local v3           #panDevice:Landroid/bluetooth/BluetoothDevice;
    :cond_2
    const/16 v6, 0x8

    if-le v0, v6, :cond_3

    .line 153
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " could not connect to PAN because 8 other devices are"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "already connected"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/server/BluetoothPanProfileHandler;->debugLog(Ljava/lang/String;)V

    .line 168
    :goto_1
    return v4

    .line 159
    :cond_3
    invoke-virtual {p0, p1, v10, v5, v9}, Landroid/server/BluetoothPanProfileHandler;->handlePanDeviceStateChange(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;II)V

    .line 161
    iget-object v6, p0, Landroid/server/BluetoothPanProfileHandler;->mBluetoothService:Landroid/server/BluetoothService;

    const-string/jumbo v7, "nap"

    invoke-virtual {v6, v2, v7}, Landroid/server/BluetoothService;->connectPanDeviceNative(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 162
    const-string v4, "connecting to PAN"

    invoke-static {v4}, Landroid/server/BluetoothPanProfileHandler;->debugLog(Ljava/lang/String;)V

    move v4, v5

    .line 163
    goto :goto_1

    .line 165
    :cond_4
    invoke-virtual {p0, p1, v10, v4, v9}, Landroid/server/BluetoothPanProfileHandler;->handlePanDeviceStateChange(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;II)V

    .line 167
    const-string v5, "could not connect to PAN"

    invoke-static {v5}, Landroid/server/BluetoothPanProfileHandler;->errorLog(Ljava/lang/String;)V

    goto :goto_1
.end method

.method disconnectPanDevice(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 8
    .parameter "device"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 228
    iget-object v5, p0, Landroid/server/BluetoothPanProfileHandler;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/server/BluetoothService;->getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 229
    .local v0, objectPath:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "disconnect PAN("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/server/BluetoothPanProfileHandler;->debugLog(Ljava/lang/String;)V

    .line 231
    invoke-virtual {p0, p1}, Landroid/server/BluetoothPanProfileHandler;->getPanDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    .line 232
    .local v2, state:I
    const/4 v5, 0x2

    if-eq v2, v5, :cond_0

    .line 233
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " already disconnected from PAN"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/server/BluetoothPanProfileHandler;->debugLog(Ljava/lang/String;)V

    .line 260
    :goto_0
    return v3

    .line 237
    :cond_0
    iget-object v5, p0, Landroid/server/BluetoothPanProfileHandler;->mPanDevices:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/server/BluetoothPanProfileHandler$BluetoothPanDevice;

    .line 239
    .local v1, panDevice:Landroid/server/BluetoothPanProfileHandler$BluetoothPanDevice;
    if-nez v1, :cond_1

    .line 240
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No record for this Pan device:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/server/BluetoothPanProfileHandler;->errorLog(Ljava/lang/String;)V

    goto :goto_0

    .line 244
    :cond_1
    #getter for: Landroid/server/BluetoothPanProfileHandler$BluetoothPanDevice;->mIface:Ljava/lang/String;
    invoke-static {v1}, Landroid/server/BluetoothPanProfileHandler$BluetoothPanDevice;->access$500(Landroid/server/BluetoothPanProfileHandler$BluetoothPanDevice;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    #getter for: Landroid/server/BluetoothPanProfileHandler$BluetoothPanDevice;->mLocalRole:I
    invoke-static {v1}, Landroid/server/BluetoothPanProfileHandler$BluetoothPanDevice;->access$400(Landroid/server/BluetoothPanProfileHandler$BluetoothPanDevice;)I

    move-result v7

    invoke-virtual {p0, p1, v5, v6, v7}, Landroid/server/BluetoothPanProfileHandler;->handlePanDeviceStateChange(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;II)V

    .line 246
    #getter for: Landroid/server/BluetoothPanProfileHandler$BluetoothPanDevice;->mLocalRole:I
    invoke-static {v1}, Landroid/server/BluetoothPanProfileHandler$BluetoothPanDevice;->access$400(Landroid/server/BluetoothPanProfileHandler$BluetoothPanDevice;)I

    move-result v5

    if-ne v5, v4, :cond_2

    .line 247
    iget-object v5, p0, Landroid/server/BluetoothPanProfileHandler;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    #getter for: Landroid/server/BluetoothPanProfileHandler$BluetoothPanDevice;->mIface:Ljava/lang/String;
    invoke-static {v1}, Landroid/server/BluetoothPanProfileHandler$BluetoothPanDevice;->access$500(Landroid/server/BluetoothPanProfileHandler$BluetoothPanDevice;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v0, v6, v7}, Landroid/server/BluetoothService;->disconnectPanServerDeviceNative(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 250
    #getter for: Landroid/server/BluetoothPanProfileHandler$BluetoothPanDevice;->mIface:Ljava/lang/String;
    invoke-static {v1}, Landroid/server/BluetoothPanProfileHandler$BluetoothPanDevice;->access$500(Landroid/server/BluetoothPanProfileHandler$BluetoothPanDevice;)Ljava/lang/String;

    move-result-object v4

    #getter for: Landroid/server/BluetoothPanProfileHandler$BluetoothPanDevice;->mLocalRole:I
    invoke-static {v1}, Landroid/server/BluetoothPanProfileHandler$BluetoothPanDevice;->access$400(Landroid/server/BluetoothPanProfileHandler$BluetoothPanDevice;)I

    move-result v5

    invoke-virtual {p0, p1, v4, v2, v5}, Landroid/server/BluetoothPanProfileHandler;->handlePanDeviceStateChange(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;II)V

    goto :goto_0

    .line 254
    :cond_2
    iget-object v5, p0, Landroid/server/BluetoothPanProfileHandler;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v5, v0}, Landroid/server/BluetoothService;->disconnectPanDeviceNative(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 256
    #getter for: Landroid/server/BluetoothPanProfileHandler$BluetoothPanDevice;->mIface:Ljava/lang/String;
    invoke-static {v1}, Landroid/server/BluetoothPanProfileHandler$BluetoothPanDevice;->access$500(Landroid/server/BluetoothPanProfileHandler$BluetoothPanDevice;)Ljava/lang/String;

    move-result-object v4

    #getter for: Landroid/server/BluetoothPanProfileHandler$BluetoothPanDevice;->mLocalRole:I
    invoke-static {v1}, Landroid/server/BluetoothPanProfileHandler$BluetoothPanDevice;->access$400(Landroid/server/BluetoothPanProfileHandler$BluetoothPanDevice;)I

    move-result v5

    invoke-virtual {p0, p1, v4, v2, v5}, Landroid/server/BluetoothPanProfileHandler;->handlePanDeviceStateChange(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;II)V

    goto :goto_0

    :cond_3
    move v3, v4

    .line 260
    goto :goto_0
.end method

.method getConnectedPanDevices()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 202
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 204
    .local v1, devices:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    iget-object v3, p0, Landroid/server/BluetoothPanProfileHandler;->mPanDevices:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 205
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p0, v0}, Landroid/server/BluetoothPanProfileHandler;->getPanDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 206
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 209
    .end local v0           #device:Landroid/bluetooth/BluetoothDevice;
    :cond_1
    return-object v1
.end method

.method getPanDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2
    .parameter "device"

    .prologue
    .line 123
    iget-object v1, p0, Landroid/server/BluetoothPanProfileHandler;->mPanDevices:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/server/BluetoothPanProfileHandler$BluetoothPanDevice;

    .line 124
    .local v0, panDevice:Landroid/server/BluetoothPanProfileHandler$BluetoothPanDevice;
    if-nez v0, :cond_0

    .line 125
    const/4 v1, 0x0

    .line 127
    :goto_0
    return v1

    :cond_0
    #getter for: Landroid/server/BluetoothPanProfileHandler$BluetoothPanDevice;->mState:I
    invoke-static {v0}, Landroid/server/BluetoothPanProfileHandler$BluetoothPanDevice;->access$300(Landroid/server/BluetoothPanProfileHandler$BluetoothPanDevice;)I

    move-result v1

    goto :goto_0
.end method

.method public getPanDeviceRole(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2
    .parameter "device"

    .prologue
    .line 132
    iget-object v1, p0, Landroid/server/BluetoothPanProfileHandler;->mPanDevices:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/server/BluetoothPanProfileHandler$BluetoothPanDevice;

    .line 133
    .local v0, panDevice:Landroid/server/BluetoothPanProfileHandler$BluetoothPanDevice;
    if-nez v0, :cond_0

    .line 134
    const/4 v1, 0x0

    .line 136
    :goto_0
    return v1

    :cond_0
    #getter for: Landroid/server/BluetoothPanProfileHandler$BluetoothPanDevice;->mLocalRole:I
    invoke-static {v0}, Landroid/server/BluetoothPanProfileHandler$BluetoothPanDevice;->access$400(Landroid/server/BluetoothPanProfileHandler$BluetoothPanDevice;)I

    move-result v1

    goto :goto_0
.end method

.method getPanDevicesMatchingConnectionStates([I)Ljava/util/List;
    .locals 9
    .parameter "states"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 213
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 215
    .local v2, devices:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    iget-object v8, p0, Landroid/server/BluetoothPanProfileHandler;->mPanDevices:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 216
    .local v1, device:Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p0, v1}, Landroid/server/BluetoothPanProfileHandler;->getPanDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v6

    .line 217
    .local v6, panDeviceState:I
    move-object v0, p1

    .local v0, arr$:[I
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_1
    if-ge v4, v5, :cond_0

    aget v7, v0, v4

    .line 218
    .local v7, state:I
    if-ne v7, v6, :cond_1

    .line 219
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 217
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 224
    .end local v0           #arr$:[I
    .end local v1           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v4           #i$:I
    .end local v5           #len$:I
    .end local v6           #panDeviceState:I
    .end local v7           #state:I
    :cond_2
    return-object v2
.end method

.method handlePanDeviceStateChange(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;II)V
    .locals 8
    .parameter "device"
    .parameter "iface"
    .parameter "state"
    .parameter "role"

    .prologue
    const/4 v2, 0x2

    .line 266
    const/4 v3, 0x0

    .line 267
    .local v3, ifaceAddr:Ljava/lang/String;
    iget-object v1, p0, Landroid/server/BluetoothPanProfileHandler;->mPanDevices:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/server/BluetoothPanProfileHandler$BluetoothPanDevice;

    .line 269
    .local v0, panDevice:Landroid/server/BluetoothPanProfileHandler$BluetoothPanDevice;
    if-nez v0, :cond_0

    .line 270
    const/4 v7, 0x0

    .line 275
    .local v7, prevState:I
    :goto_0
    if-ne v7, p3, :cond_1

    .line 316
    :goto_1
    return-void

    .line 272
    .end local v7           #prevState:I
    :cond_0
    #getter for: Landroid/server/BluetoothPanProfileHandler$BluetoothPanDevice;->mState:I
    invoke-static {v0}, Landroid/server/BluetoothPanProfileHandler$BluetoothPanDevice;->access$300(Landroid/server/BluetoothPanProfileHandler$BluetoothPanDevice;)I

    move-result v7

    .line 273
    .restart local v7       #prevState:I
    #getter for: Landroid/server/BluetoothPanProfileHandler$BluetoothPanDevice;->mIfaceAddr:Ljava/lang/String;
    invoke-static {v0}, Landroid/server/BluetoothPanProfileHandler$BluetoothPanDevice;->access$600(Landroid/server/BluetoothPanProfileHandler$BluetoothPanDevice;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 277
    :cond_1
    const/4 v1, 0x1

    if-ne p4, v1, :cond_4

    .line 278
    if-ne p3, v2, :cond_3

    .line 279
    invoke-direct {p0, p2}, Landroid/server/BluetoothPanProfileHandler;->enableTethering(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 280
    if-nez v3, :cond_2

    const-string v1, "BluetoothPanProfileHandler"

    const-string v2, "Error seting up tether interface"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    :cond_2
    :goto_2
    if-nez v0, :cond_7

    .line 299
    new-instance v0, Landroid/server/BluetoothPanProfileHandler$BluetoothPanDevice;

    .end local v0           #panDevice:Landroid/server/BluetoothPanProfileHandler$BluetoothPanDevice;
    move-object v1, p0

    move v2, p3

    move-object v4, p2

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/server/BluetoothPanProfileHandler$BluetoothPanDevice;-><init>(Landroid/server/BluetoothPanProfileHandler;ILjava/lang/String;Ljava/lang/String;I)V

    .line 300
    .restart local v0       #panDevice:Landroid/server/BluetoothPanProfileHandler$BluetoothPanDevice;
    iget-object v1, p0, Landroid/server/BluetoothPanProfileHandler;->mPanDevices:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    :goto_3
    new-instance v6, Landroid/content/Intent;

    const-string v1, "android.bluetooth.pan.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {v6, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 309
    .local v6, intent:Landroid/content/Intent;
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v6, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 310
    const-string v1, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    invoke-virtual {v6, v1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 311
    const-string v1, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {v6, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 312
    const-string v1, "android.bluetooth.pan.extra.LOCAL_ROLE"

    invoke-virtual {v6, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 313
    iget-object v1, p0, Landroid/server/BluetoothPanProfileHandler;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v6, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 315
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pan Device state : device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " State:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/server/BluetoothPanProfileHandler;->debugLog(Ljava/lang/String;)V

    goto :goto_1

    .line 281
    .end local v6           #intent:Landroid/content/Intent;
    :cond_3
    if-nez p3, :cond_2

    .line 282
    if-eqz v3, :cond_2

    .line 283
    iget-object v1, p0, Landroid/server/BluetoothPanProfileHandler;->mBluetoothIfaceAddresses:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 284
    const/4 v3, 0x0

    goto :goto_2

    .line 289
    :cond_4
    if-ne p3, v2, :cond_5

    .line 290
    invoke-static {}, Landroid/bluetooth/BluetoothTetheringDataTracker;->getInstance()Landroid/bluetooth/BluetoothTetheringDataTracker;

    move-result-object v1

    invoke-virtual {v1, p2, p1}, Landroid/bluetooth/BluetoothTetheringDataTracker;->startReverseTether(Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_2

    .line 291
    :cond_5
    if-nez p3, :cond_2

    if-eq v7, v2, :cond_6

    const/4 v1, 0x3

    if-ne v7, v1, :cond_2

    .line 294
    :cond_6
    invoke-static {}, Landroid/bluetooth/BluetoothTetheringDataTracker;->getInstance()Landroid/bluetooth/BluetoothTetheringDataTracker;

    move-result-object v1

    #getter for: Landroid/server/BluetoothPanProfileHandler$BluetoothPanDevice;->mIface:Ljava/lang/String;
    invoke-static {v0}, Landroid/server/BluetoothPanProfileHandler$BluetoothPanDevice;->access$500(Landroid/server/BluetoothPanProfileHandler$BluetoothPanDevice;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothTetheringDataTracker;->stopReverseTether(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 302
    :cond_7
    #setter for: Landroid/server/BluetoothPanProfileHandler$BluetoothPanDevice;->mState:I
    invoke-static {v0, p3}, Landroid/server/BluetoothPanProfileHandler$BluetoothPanDevice;->access$302(Landroid/server/BluetoothPanProfileHandler$BluetoothPanDevice;I)I

    .line 303
    #setter for: Landroid/server/BluetoothPanProfileHandler$BluetoothPanDevice;->mIfaceAddr:Ljava/lang/String;
    invoke-static {v0, v3}, Landroid/server/BluetoothPanProfileHandler$BluetoothPanDevice;->access$602(Landroid/server/BluetoothPanProfileHandler$BluetoothPanDevice;Ljava/lang/String;)Ljava/lang/String;

    .line 304
    #setter for: Landroid/server/BluetoothPanProfileHandler$BluetoothPanDevice;->mLocalRole:I
    invoke-static {v0, p4}, Landroid/server/BluetoothPanProfileHandler$BluetoothPanDevice;->access$402(Landroid/server/BluetoothPanProfileHandler$BluetoothPanDevice;I)I

    .line 305
    #setter for: Landroid/server/BluetoothPanProfileHandler$BluetoothPanDevice;->mIface:Ljava/lang/String;
    invoke-static {v0, p2}, Landroid/server/BluetoothPanProfileHandler$BluetoothPanDevice;->access$502(Landroid/server/BluetoothPanProfileHandler$BluetoothPanDevice;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_3
.end method

.method isTetheringOn()Z
    .locals 1

    .prologue
    .line 87
    iget-boolean v0, p0, Landroid/server/BluetoothPanProfileHandler;->mTetheringOn:Z

    return v0
.end method

.method setBluetoothTethering(Z)V
    .locals 3
    .parameter "value"

    .prologue
    .line 99
    if-nez p1, :cond_0

    .line 100
    invoke-direct {p0}, Landroid/server/BluetoothPanProfileHandler;->disconnectPanServerDevices()Z

    .line 103
    :cond_0
    iget-object v1, p0, Landroid/server/BluetoothPanProfileHandler;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v1}, Landroid/server/BluetoothService;->getBluetoothState()I

    move-result v1

    const/16 v2, 0xc

    if-eq v1, v2, :cond_1

    if-eqz p1, :cond_1

    .line 104
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 105
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 106
    new-instance v1, Landroid/server/BluetoothPanProfileHandler$1;

    invoke-direct {v1, p0}, Landroid/server/BluetoothPanProfileHandler$1;-><init>(Landroid/server/BluetoothPanProfileHandler;)V

    iput-object v1, p0, Landroid/server/BluetoothPanProfileHandler;->mTetheringReceiver:Landroid/content/BroadcastReceiver;

    .line 116
    iget-object v1, p0, Landroid/server/BluetoothPanProfileHandler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/server/BluetoothPanProfileHandler;->mTetheringReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 120
    .end local v0           #filter:Landroid/content/IntentFilter;
    :goto_0
    return-void

    .line 118
    :cond_1
    iput-boolean p1, p0, Landroid/server/BluetoothPanProfileHandler;->mTetheringOn:Z

    goto :goto_0
.end method
