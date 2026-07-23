.class public final Lcom/facebook/ads/redexgen/X/gk;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/fa;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Ss;->A03(Lcom/facebook/ads/redexgen/X/St;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A04:[B

.field public static A05:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:J

.field public final synthetic A01:J

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/Ss;

.field public final synthetic A03:Lcom/facebook/ads/redexgen/X/St;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 2902
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "5xwnqBcSwQdKZIKpCxhEhIB1ehz5rbXz"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "SVnny4sMHrVxDT0mCWgznsGyNwA0K29Q"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "WSedDxIDZVsWQqxlis9Ww20KqcWIyEnI"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "k4ruqDXMLqmQWww9EukWiXBxmglEjOwQ"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "qeuUn3ZO1g9cCLbTYKy8rfCeNqsjP"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "lwrAvEwGJvKZaAaN19YZU8UxJCWRUSKU"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "KAMWqSOuX5oAD"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "9nA6fjXGqk7Q6o3drz3rA7fb0omaCvC"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/gk;->A05:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/gk;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Ss;Lcom/facebook/ads/redexgen/X/St;JJ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 83459
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/gk;->A02:Lcom/facebook/ads/redexgen/X/Ss;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/gk;->A03:Lcom/facebook/ads/redexgen/X/St;

    iput-wide p3, p0, Lcom/facebook/ads/redexgen/X/gk;->A00:J

    iput-wide p5, p0, Lcom/facebook/ads/redexgen/X/gk;->A01:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 3

    sget-object v1, Lcom/facebook/ads/redexgen/X/gk;->A04:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 p1, 0x0

    :goto_0
    array-length v0, p0

    if-ge p1, v0, :cond_1

    aget-byte v0, p0, p1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x30

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    sget-object v1, Lcom/facebook/ads/redexgen/X/gk;->A05:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x46

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/gk;->A05:[Ljava/lang/String;

    const-string v1, "k7DX94ZUmS6mjbqg2Uqpnt5MM6ksEeAZ"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .locals 4

    const/16 v3, 0xc

    sget-object v1, Lcom/facebook/ads/redexgen/X/gk;->A05:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x46

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/gk;->A05:[Ljava/lang/String;

    const-string v1, "84A19LE3N5skcLW3UxwckiEcHwoNq"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    new-array v0, v3, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/gk;->A04:[B

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :array_0
    .array-data 1
        0x12t
        0xbt
        0x8t
        0xbt
        0xct
        0x14t
        0xbt
        -0x9t
        -0x16t
        -0x1bt
        -0x1at
        -0x10t
    .end array-data
.end method


# virtual methods
.method public final ADj(Z)V
    .locals 17

    .line 83460
    move-object/from16 v3, p0

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/gk;->A02:Lcom/facebook/ads/redexgen/X/Ss;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Ss;->A01:Lcom/facebook/ads/redexgen/X/Sx;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Sx;->A07(Lcom/facebook/ads/redexgen/X/Sx;)Lcom/facebook/ads/redexgen/X/T8;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/T0;->A06(Lcom/facebook/ads/redexgen/X/T8;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83461
    new-instance v2, Lcom/facebook/ads/redexgen/X/Sz;

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/gk;->A03:Lcom/facebook/ads/redexgen/X/St;

    iget-object v8, v0, Lcom/facebook/ads/redexgen/X/St;->A06:Ljava/lang/String;

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/gk;->A03:Lcom/facebook/ads/redexgen/X/St;

    iget-object v7, v0, Lcom/facebook/ads/redexgen/X/St;->A07:Ljava/lang/String;

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/gk;->A03:Lcom/facebook/ads/redexgen/X/St;

    iget-object v6, v0, Lcom/facebook/ads/redexgen/X/St;->A02:Ljava/lang/String;

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/gk;->A03:Lcom/facebook/ads/redexgen/X/St;

    iget-object v5, v0, Lcom/facebook/ads/redexgen/X/St;->A08:Ljava/lang/String;

    const/4 v4, 0x7

    const/4 v1, 0x5

    const/16 v0, 0x51

    invoke-static {v4, v1, v0}, Lcom/facebook/ads/redexgen/X/gk;->A00(III)Ljava/lang/String;

    move-result-object v10

    move-object v8, v8

    move-object v9, v7

    move-object v11, v6

    move-object v12, v5

    move-object v7, v2

    invoke-direct/range {v7 .. v12}, Lcom/facebook/ads/redexgen/X/Sz;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 83462
    .local v0, "adCacheDebugData":Lcom/facebook/ads/redexgen/X/Sz;
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/gk;->A02:Lcom/facebook/ads/redexgen/X/Ss;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Ss;->A01:Lcom/facebook/ads/redexgen/X/Sx;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Sx;->A07(Lcom/facebook/ads/redexgen/X/Sx;)Lcom/facebook/ads/redexgen/X/T8;

    move-result-object v0

    move/from16 v1, p1

    invoke-static {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/T0;->A04(Lcom/facebook/ads/redexgen/X/T8;Lcom/facebook/ads/redexgen/X/Sz;Z)V

    .line 83463
    if-nez v1, :cond_0

    .line 83464
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/gk;->A02:Lcom/facebook/ads/redexgen/X/Ss;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Ss;->A01:Lcom/facebook/ads/redexgen/X/Sx;

    .line 83465
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Sx;->A07(Lcom/facebook/ads/redexgen/X/Sx;)Lcom/facebook/ads/redexgen/X/T8;

    move-result-object v6

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/gk;->A03:Lcom/facebook/ads/redexgen/X/St;

    iget-object v7, v0, Lcom/facebook/ads/redexgen/X/St;->A06:Ljava/lang/String;

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/gk;->A03:Lcom/facebook/ads/redexgen/X/St;

    iget-object v8, v0, Lcom/facebook/ads/redexgen/X/St;->A07:Ljava/lang/String;

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/gk;->A03:Lcom/facebook/ads/redexgen/X/St;

    iget-object v9, v0, Lcom/facebook/ads/redexgen/X/St;->A08:Ljava/lang/String;

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/gk;->A03:Lcom/facebook/ads/redexgen/X/St;

    iget-object v11, v0, Lcom/facebook/ads/redexgen/X/St;->A02:Ljava/lang/String;

    iget-wide v0, v3, Lcom/facebook/ads/redexgen/X/gk;->A00:J

    .line 83466
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    .line 83467
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v0, v3, Lcom/facebook/ads/redexgen/X/gk;->A01:J

    sub-long/2addr v4, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    .line 83468
    const/4 v4, 0x7

    const/4 v1, 0x5

    const/16 v0, 0x51

    invoke-static {v4, v1, v0}, Lcom/facebook/ads/redexgen/X/gk;->A00(III)Ljava/lang/String;

    move-result-object v10

    const/16 v12, 0x840

    const/4 v13, 0x0

    const/16 v16, 0x0

    invoke-static/range {v6 .. v16}, Lcom/facebook/ads/redexgen/X/T0;->A05(Lcom/facebook/ads/redexgen/X/T8;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;)V

    .line 83469
    :cond_0
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Sx;->A0A()Ljava/util/Map;

    move-result-object v1

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Sz;->A04:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83470
    .end local v0    # "adCacheDebugData":Lcom/facebook/ads/redexgen/X/Sz;
    :cond_1
    :try_start_0
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/gk;->A02:Lcom/facebook/ads/redexgen/X/Ss;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ss;->A01(Lcom/facebook/ads/redexgen/X/Ss;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v1

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83471
    :catch_0
    return-void
.end method

.method public final ADr(Ljava/lang/Throwable;)V
    .locals 15

    .line 83472
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gk;->A02:Lcom/facebook/ads/redexgen/X/Ss;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Ss;->A01:Lcom/facebook/ads/redexgen/X/Sx;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Sx;->A07(Lcom/facebook/ads/redexgen/X/Sx;)Lcom/facebook/ads/redexgen/X/T8;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/T0;->A06(Lcom/facebook/ads/redexgen/X/T8;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83473
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gk;->A02:Lcom/facebook/ads/redexgen/X/Ss;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Ss;->A01:Lcom/facebook/ads/redexgen/X/Sx;

    .line 83474
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Sx;->A07(Lcom/facebook/ads/redexgen/X/Sx;)Lcom/facebook/ads/redexgen/X/T8;

    move-result-object v4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gk;->A03:Lcom/facebook/ads/redexgen/X/St;

    iget-object v5, v0, Lcom/facebook/ads/redexgen/X/St;->A06:Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gk;->A03:Lcom/facebook/ads/redexgen/X/St;

    iget-object v6, v0, Lcom/facebook/ads/redexgen/X/St;->A07:Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gk;->A03:Lcom/facebook/ads/redexgen/X/St;

    iget-object v7, v0, Lcom/facebook/ads/redexgen/X/St;->A08:Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gk;->A03:Lcom/facebook/ads/redexgen/X/St;

    iget-object v9, v0, Lcom/facebook/ads/redexgen/X/St;->A02:Ljava/lang/String;

    .line 83475
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v11

    .line 83476
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/gk;->A01:J

    sub-long/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    .line 83477
    const/4 v2, 0x7

    const/4 v1, 0x5

    const/16 v0, 0x51

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/gk;->A00(III)Ljava/lang/String;

    move-result-object v8

    const/16 v10, 0x847

    const/4 v12, 0x0

    const/4 v14, 0x0

    invoke-static/range {v4 .. v14}, Lcom/facebook/ads/redexgen/X/T0;->A05(Lcom/facebook/ads/redexgen/X/T8;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;)V

    goto :goto_1

    .line 83478
    :cond_0
    const/4 v2, 0x0

    const/4 v1, 0x7

    const/16 v0, 0x6d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/gk;->A00(III)Ljava/lang/String;

    move-result-object v11

    goto :goto_0

    .line 83479
    :cond_1
    :goto_1
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gk;->A02:Lcom/facebook/ads/redexgen/X/Ss;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ss;->A01(Lcom/facebook/ads/redexgen/X/Ss;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83480
    :catch_0
    return-void
.end method
