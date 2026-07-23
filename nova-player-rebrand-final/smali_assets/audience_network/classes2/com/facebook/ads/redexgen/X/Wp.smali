.class public abstract Lcom/facebook/ads/redexgen/X/Wp;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Wo;
    }
.end annotation


# static fields
.field public static A00:[B

.field public static A01:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 2241
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "vserbkQ71L70HeExkEksLvSV50Js9e5T"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "kCtue8tdTX7Ntsd63evdhPLiI5GlGyVZ"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "TwC9DE0UkCmO5xuA9ppRryz5QvyD"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "4CWs1R6rr7PkkffzytFACCqk28rMKWqF"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "DS0L0fcRoHYALrKB9SSkXSb7384LvFtu"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "e8tzsRThNax4EAToJhNq21dAKBpwgTLo"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "Q0BiPrkB2PSWzVDnLZTkEnIKaCsuaheD"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "rbmY91JFcJMC4pCqNbunWn9nQrXHl54t"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Wp;->A01:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Wp;->A03()V

    return-void
.end method

.method public static A00(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/Wo;
    .locals 0

    .line 71521
    :try_start_0
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Wp;->A01(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/Wo;

    move-result-object p0

    return-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71522
    .local p0, "ex":Ljava/lang/Exception;
    :catch_0
    sget-object p0, Lcom/facebook/ads/redexgen/X/Wo;->A05:Lcom/facebook/ads/redexgen/X/Wo;

    return-object p0
.end method

.method public static A01(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/Wo;
    .locals 4

    .line 71523
    if-nez p0, :cond_0

    .line 71524
    sget-object v0, Lcom/facebook/ads/redexgen/X/Wo;->A0D:Lcom/facebook/ads/redexgen/X/Wo;

    return-object v0

    .line 71525
    :cond_0
    const/4 v2, 0x0

    const/16 v1, 0x8

    const/16 v0, 0x49

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Wp;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 71526
    .local v0, "mgr":Landroid/app/ActivityManager;
    if-nez v0, :cond_2

    .line 71527
    sget-object v3, Lcom/facebook/ads/redexgen/X/Wo;->A08:Lcom/facebook/ads/redexgen/X/Wo;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Wp;->A01:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/16 v0, 0x1b

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6f

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Wp;->A01:[Ljava/lang/String;

    const-string v1, "W800VLcbCNBOE1f9F"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    return-object v3

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 71528
    :cond_2
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getAppTasks()Ljava/util/List;

    move-result-object v1

    .line 71529
    .local v1, "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$AppTask;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 71530
    sget-object v0, Lcom/facebook/ads/redexgen/X/Wo;->A0B:Lcom/facebook/ads/redexgen/X/Wo;

    return-object v0

    .line 71531
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$AppTask;

    .line 71532
    .local v3, "task":Landroid/app/ActivityManager$AppTask;
    invoke-virtual {v0}, Landroid/app/ActivityManager$AppTask;->getTaskInfo()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v1

    .line 71533
    .local p0, "taskInfo":Landroid/app/ActivityManager$RecentTaskInfo;
    if-nez v1, :cond_5

    goto :goto_0

    .line 71534
    :cond_5
    iget-object v0, v1, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    if-eqz v0, :cond_4

    iget-object v0, v1, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    .line 71535
    invoke-virtual {v0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, v1, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    .line 71536
    invoke-virtual {v0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v3

    const/16 v2, 0x8

    const/16 v1, 0x20

    const/16 v0, 0x6d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Wp;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 71537
    sget-object v0, Lcom/facebook/ads/redexgen/X/Wo;->A06:Lcom/facebook/ads/redexgen/X/Wo;

    return-object v0

    .line 71538
    :cond_6
    sget-object v3, Lcom/facebook/ads/redexgen/X/Wo;->A09:Lcom/facebook/ads/redexgen/X/Wo;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Wp;->A01:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v2, v2, v0

    const/16 v0, 0x16

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_7

    sget-object v2, Lcom/facebook/ads/redexgen/X/Wp;->A01:[Ljava/lang/String;

    const-string v1, "GyHEsdoLJV3XEjiFxTFX6orc2Mvnrd3k"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "nU2m6dMK7qfy4atV1JxTmvIeg7zDsgbu"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    return-object v3

    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A02(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/Wp;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const/4 p0, 0x0

    :goto_0
    array-length p1, v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Wp;->A01:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/16 v0, 0x14

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Wp;->A01:[Ljava/lang/String;

    const-string v1, "hlZJhcxljYiKc7UKHZyQNCRGeosS0rVV"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "L6Z1FseRPLChQnX48wkOINplJZHgpjkr"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-ge p0, p1, :cond_0

    aget-byte v0, v3, p0

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x31

    int-to-byte v0, v0

    aput-byte v0, v3, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A03()V
    .locals 1

    const/16 v0, 0x28

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Wp;->A00:[B

    return-void

    :array_0
    .array-data 1
        -0x25t
        -0x23t
        -0x12t
        -0x1dt
        -0x10t
        -0x1dt
        -0x12t
        -0xdt
        -0x1t
        0xct
        0x2t
        0x10t
        0xdt
        0x7t
        0x2t
        -0x34t
        0x7t
        0xct
        0x12t
        0x3t
        0xct
        0x12t
        -0x34t
        0x1t
        -0x1t
        0x12t
        0x3t
        0x5t
        0xdt
        0x10t
        0x17t
        -0x34t
        -0x16t
        -0x21t
        -0xdt
        -0x14t
        -0x1ft
        -0x1at
        -0x1dt
        -0x10t
    .end array-data
.end method
