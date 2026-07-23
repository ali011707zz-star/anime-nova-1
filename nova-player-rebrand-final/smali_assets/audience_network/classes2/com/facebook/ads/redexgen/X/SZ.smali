.class public abstract Lcom/facebook/ads/redexgen/X/SZ;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A00:[B

.field public static A01:[Ljava/lang/String;

.field public static final A02:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/facebook/ads/redexgen/X/SX;",
            ">;"
        }
    .end annotation
.end field

.field public static final A03:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1661
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "T8"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "As3hIStO2xNa0GSSHrkEVjQu"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "DXoFAMJTZKDaTyX0if7pZrkyLA7XvGsC"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "niDMG5wZxQy0H8acRFWa8hH2XuraMrTN"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "878XRXnWNCNw6FCwqGtfz4QO6Hd03tfb"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "ID5FT62NpqbpmPra08cWCCHJVsi2pDHC"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "txdj"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/SZ;->A01:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/SZ;->A05()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/SZ;->A02:Ljava/util/concurrent/atomic/AtomicReference;

    .line 1662
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0xc

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/SZ;->A04(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/SZ;->A03:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public static A00()Lcom/facebook/ads/redexgen/X/SX;
    .locals 1

    .line 64017
    sget-object v0, Lcom/facebook/ads/redexgen/X/SZ;->A02:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/SX;

    .line 64018
    .local v0, "advertisingIdInfo":Lcom/facebook/ads/redexgen/X/SX;
    if-nez v0, :cond_0

    .line 64019
    invoke-static {}, Lcom/facebook/ads/redexgen/X/SX;->A00()Lcom/facebook/ads/redexgen/X/SX;

    move-result-object v0

    return-object v0

    .line 64020
    :cond_0
    return-object v0
.end method

.method public static A01(Lcom/facebook/ads/redexgen/X/T8;Lcom/facebook/ads/redexgen/X/SX;)Lcom/facebook/ads/redexgen/X/SX;
    .locals 5

    .line 64021
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/SX;->A03()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64022
    :cond_0
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Sf;->A00(Lcom/facebook/ads/redexgen/X/T8;)Lcom/facebook/ads/redexgen/X/SX;

    move-result-object v0

    return-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64023
    :catchall_0
    move-exception v0

    .line 64024
    .local v0, "t":Ljava/lang/Throwable;
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/T8;->A08()Lcom/facebook/ads/redexgen/X/Tc;

    move-result-object p0

    sget v4, Lcom/facebook/ads/redexgen/X/Td;->A1Q:I

    new-instance v3, Lcom/facebook/ads/redexgen/X/Te;

    invoke-direct {v3, v0}, Lcom/facebook/ads/redexgen/X/Te;-><init>(Ljava/lang/Throwable;)V

    .line 64025
    const/16 v2, 0xc

    const/4 v1, 0x7

    const/16 v0, 0x54

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/SZ;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/Tc;->ABC(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/Te;)V

    .line 64026
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_1
    return-object p1
.end method

.method public static A02(Lcom/facebook/ads/redexgen/X/T8;Lcom/facebook/ads/redexgen/X/SX;Lcom/facebook/ads/redexgen/X/SY;)Lcom/facebook/ads/redexgen/X/SX;
    .locals 6

    .line 64027
    const/4 v5, 0x0

    .line 64028
    .local v0, "fb4aData":Lcom/facebook/ads/redexgen/X/Sa;
    :try_start_0
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Uo;->A06(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 64029
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/SX;->A03()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64030
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/T8;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Sb;->A00(Landroid/content/ContentResolver;)Lcom/facebook/ads/redexgen/X/Sa;

    move-result-object v5

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64031
    :catchall_0
    move-exception v0

    .line 64032
    .local v1, "t":Ljava/lang/Throwable;
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/T8;->A08()Lcom/facebook/ads/redexgen/X/Tc;

    move-result-object p0

    sget v4, Lcom/facebook/ads/redexgen/X/Td;->A1S:I

    new-instance v3, Lcom/facebook/ads/redexgen/X/Te;

    invoke-direct {v3, v0}, Lcom/facebook/ads/redexgen/X/Te;-><init>(Ljava/lang/Throwable;)V

    .line 64033
    const/16 v2, 0xc

    const/4 v1, 0x7

    const/16 v0, 0x54

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/SZ;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/Tc;->ABC(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/Te;)V

    .line 64034
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_1
    :goto_0
    if-eqz v5, :cond_2

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/Sa;->A01:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 64035
    sget-object v1, Lcom/facebook/ads/redexgen/X/SZ;->A03:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/Sa;->A01:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 64036
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/Sa;->A01:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/facebook/ads/redexgen/X/SY;->A05(Ljava/lang/String;)V

    .line 64037
    :cond_2
    if-nez p1, :cond_3

    if-eqz v5, :cond_3

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/Sa;->A00:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 64038
    iget-object v2, v5, Lcom/facebook/ads/redexgen/X/Sa;->A00:Ljava/lang/String;

    iget-boolean v1, v5, Lcom/facebook/ads/redexgen/X/Sa;->A02:Z

    sget-object v0, Lcom/facebook/ads/redexgen/X/SW;->A04:Lcom/facebook/ads/redexgen/X/SW;

    new-instance p1, Lcom/facebook/ads/redexgen/X/SX;

    invoke-direct {p1, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/SX;-><init>(Ljava/lang/String;ZLcom/facebook/ads/redexgen/X/SW;)V

    .line 64039
    :cond_3
    return-object p1
.end method

.method public static A03()Ljava/lang/String;
    .locals 3

    .line 64040
    sget-object v0, Lcom/facebook/ads/redexgen/X/SZ;->A03:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 64041
    .local v0, "attributionId":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 64042
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0xc

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/SZ;->A04(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 64043
    :cond_0
    return-object v0
.end method

.method public static A04(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/SZ;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    const/4 p0, 0x0

    :goto_0
    array-length v3, p1

    sget-object v1, Lcom/facebook/ads/redexgen/X/SZ;->A01:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x4

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/SZ;->A01:[Ljava/lang/String;

    const-string v1, "PcSdqCtN9qYKSfDsPVWrfTZjyuiu0dLa"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-ge p0, v3, :cond_1

    aget-byte v0, p1, p0

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x56

    int-to-byte v0, v0

    aput-byte v0, p1, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A05()V
    .locals 1

    const/16 v0, 0x20

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/SZ;->A00:[B

    return-void

    :array_0
    .array-data 1
        0x13t
        0x1bt
        0x16t
        0x11t
        0x21t
        0x28t
        0x17t
        0x24t
        0x24t
        0x1bt
        0x16t
        0x17t
        0x11t
        0xft
        0x18t
        0xft
        0x1ct
        0x13t
        0xdt
        0x2bt
        0x26t
        0x28t
        0x23t
        0x21t
        0x31t
        0x38t
        0x27t
        0x34t
        0x34t
        0x2bt
        0x26t
        0x27t
    .end array-data
.end method

.method public static A06(Lcom/facebook/ads/redexgen/X/SY;)V
    .locals 2

    .line 64044
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/SY;->A02()Lcom/facebook/ads/redexgen/X/SX;

    move-result-object v1

    .line 64045
    .local v0, "adInfoFromStorage":Lcom/facebook/ads/redexgen/X/SX;
    sget-object v0, Lcom/facebook/ads/redexgen/X/SZ;->A02:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 64046
    sget-object v1, Lcom/facebook/ads/redexgen/X/SZ;->A03:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/SY;->A03()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 64047
    return-void
.end method

.method public static A07(Lcom/facebook/ads/redexgen/X/T8;)V
    .locals 8

    .line 64048
    :try_start_0
    new-instance v5, Lcom/facebook/ads/redexgen/X/SY;

    invoke-direct {v5, p0}, Lcom/facebook/ads/redexgen/X/SY;-><init>(Lcom/facebook/ads/redexgen/X/T8;)V

    .line 64049
    .local v0, "attributionStorage":Lcom/facebook/ads/redexgen/X/SY;
    invoke-static {v5}, Lcom/facebook/ads/redexgen/X/SZ;->A06(Lcom/facebook/ads/redexgen/X/SY;)V

    .line 64050
    invoke-static {}, Lcom/facebook/ads/redexgen/X/SZ;->A08()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64051
    return-void

    .line 64052
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/SZ;->A02:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/SX;

    .line 64053
    .local v1, "advertisingIdInfo":Lcom/facebook/ads/redexgen/X/SX;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/SX;->A03()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 64054
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/SX;->A01()J

    move-result-wide v6

    .local v2, "cacheTS":J
    goto :goto_0

    .line 64055
    .end local v2    # "cacheTS":J
    :cond_1
    const-wide/16 v6, -0x1

    .line 64056
    .restart local v2    # "cacheTS":J
    :goto_0
    const-wide/16 v1, 0x0

    cmp-long v0, v6, v1

    if-lez v0, :cond_2

    .line 64057
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v6

    .line 64058
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Uo;->A00(Landroid/content/Context;)J

    move-result-wide v1

    cmp-long v0, v3, v1

    if-gez v0, :cond_2

    .line 64059
    return-void

    .line 64060
    :cond_2
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Uo;->A07(Landroid/content/Context;)Z

    move-result v1

    const/4 v0, 0x0

    if-eqz v1, :cond_3

    .line 64061
    invoke-static {p0, v0, v5}, Lcom/facebook/ads/redexgen/X/SZ;->A02(Lcom/facebook/ads/redexgen/X/T8;Lcom/facebook/ads/redexgen/X/SX;Lcom/facebook/ads/redexgen/X/SY;)Lcom/facebook/ads/redexgen/X/SX;

    move-result-object v0

    .line 64062
    .local v4, "upToDateAdInfo":Lcom/facebook/ads/redexgen/X/SX;
    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/SZ;->A01(Lcom/facebook/ads/redexgen/X/T8;Lcom/facebook/ads/redexgen/X/SX;)Lcom/facebook/ads/redexgen/X/SX;

    move-result-object v1

    goto :goto_1

    .line 64063
    .end local v4    # "upToDateAdInfo":Lcom/facebook/ads/redexgen/X/SX;
    :cond_3
    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/SZ;->A01(Lcom/facebook/ads/redexgen/X/T8;Lcom/facebook/ads/redexgen/X/SX;)Lcom/facebook/ads/redexgen/X/SX;

    move-result-object v0

    .line 64064
    .restart local v4    # "upToDateAdInfo":Lcom/facebook/ads/redexgen/X/SX;
    invoke-static {p0, v0, v5}, Lcom/facebook/ads/redexgen/X/SZ;->A02(Lcom/facebook/ads/redexgen/X/T8;Lcom/facebook/ads/redexgen/X/SX;Lcom/facebook/ads/redexgen/X/SY;)Lcom/facebook/ads/redexgen/X/SX;

    move-result-object v1

    .line 64065
    :goto_1
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/SX;->A03()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 64066
    sget-object v0, Lcom/facebook/ads/redexgen/X/SZ;->A02:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 64067
    invoke-virtual {v5, v1}, Lcom/facebook/ads/redexgen/X/SY;->A04(Lcom/facebook/ads/redexgen/X/SX;)V

    goto :goto_2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64068
    :catchall_0
    move-exception v0

    .line 64069
    .local v0, "t":Ljava/lang/Throwable;
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/T8;->A08()Lcom/facebook/ads/redexgen/X/Tc;

    move-result-object v5

    sget v4, Lcom/facebook/ads/redexgen/X/Td;->A1R:I

    new-instance v3, Lcom/facebook/ads/redexgen/X/Te;

    invoke-direct {v3, v0}, Lcom/facebook/ads/redexgen/X/Te;-><init>(Ljava/lang/Throwable;)V

    .line 64070
    const/16 v2, 0xc

    const/4 v1, 0x7

    const/16 v0, 0x54

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/SZ;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/Tc;->ABC(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/Te;)V

    .line 64071
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_4
    :goto_2
    return-void
.end method

.method public static A08()Z
    .locals 5

    .line 64072
    const/4 v4, 0x0

    .line 64073
    .local v0, "updated":Z
    invoke-static {}, Lcom/facebook/ads/redexgen/X/XD;->A04()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    const/16 v1, 0xc

    const/16 v0, 0x5c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/SZ;->A04(III)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/XD;->A05(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64074
    sget-object v1, Lcom/facebook/ads/redexgen/X/SZ;->A03:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/XD;->A01(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 64075
    const/4 v4, 0x1

    .line 64076
    :cond_0
    invoke-static {}, Lcom/facebook/ads/redexgen/X/XD;->A04()Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/SZ;->A01:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x4

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/SZ;->A01:[Ljava/lang/String;

    const-string v1, "Cpq5b7Aomj18wFHDN8BPNJlk9AiHAVMm"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-eqz v3, :cond_2

    const/16 v2, 0x13

    const/16 v1, 0xd

    const/16 v0, 0x6c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/SZ;->A04(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/XD;->A05(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 64077
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/XD;->A01(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 64078
    .local v1, "idfaOverride":Ljava/lang/String;
    sget-object v4, Lcom/facebook/ads/redexgen/X/SZ;->A02:Ljava/util/concurrent/atomic/AtomicReference;

    .line 64079
    if-eqz v3, :cond_3

    :goto_0
    const/4 v2, 0x0

    sget-object v1, Lcom/facebook/ads/redexgen/X/SW;->A03:Lcom/facebook/ads/redexgen/X/SW;

    new-instance v0, Lcom/facebook/ads/redexgen/X/SX;

    invoke-direct {v0, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/SX;-><init>(Ljava/lang/String;ZLcom/facebook/ads/redexgen/X/SW;)V

    .line 64080
    invoke-virtual {v4, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 64081
    const/4 v4, 0x1

    .line 64082
    .end local v1    # "idfaOverride":Ljava/lang/String;
    :cond_2
    return v4

    .line 64083
    :cond_3
    const/4 v3, 0x0

    sget-object v1, Lcom/facebook/ads/redexgen/X/SZ;->A01:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x4

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/SZ;->A01:[Ljava/lang/String;

    const-string v1, "Ywke"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const/4 v1, 0x0

    const/4 v0, 0x2

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/SZ;->A04(III)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_4
    sget-object v2, Lcom/facebook/ads/redexgen/X/SZ;->A01:[Ljava/lang/String;

    const-string v1, "aB8iQRCNNWTx0AWcZvgXlT81SikGsrWB"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const/4 v1, 0x0

    const/16 v0, 0xc

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/SZ;->A04(III)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method
