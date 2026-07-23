.class public final Lcom/facebook/ads/redexgen/X/fl;
.super Lcom/facebook/ads/redexgen/X/TL;
.source ""


# static fields
.field public static A00:[B

.field public static A01:[Ljava/lang/String;

.field public static final A02:Lcom/facebook/ads/redexgen/X/TF;

.field public static final A03:Lcom/facebook/ads/redexgen/X/TF;

.field public static final A04:[Lcom/facebook/ads/redexgen/X/TF;

.field public static final A05:Ljava/lang/String;

.field public static final A06:Ljava/lang/String;

.field public static final A07:Ljava/lang/String;

.field public static final A08:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 2819
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "v5MZzRzrTL11f6lKUt2ZQD1OVIavmnrt"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "OQAuAlzJEKPfh7ZgcR4xCXzzkMNpdJq1"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "ORBVlGZaT9NsACLTU7PLH6nx7c52uYSI"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "kFePfToViPIZQeUiwoBs"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "eRXXWt8NkKb0AEFThzS2KgPgrvMEJJml"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "Br8mzprdPK1S49BanGBC"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "SoemqsWiEpTnAycOeZvswJMc9fMJVUnI"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "UAbmRevtk8pEhuOi2MMFgEMoVQVmS6xB"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/fl;->A01:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/fl;->A04()V

    const/16 v2, 0xaa

    const/16 v1, 0x8

    const/16 v0, 0x6b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/fl;->A00(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x8f

    const/16 v1, 0x10

    const/16 v0, 0x12

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/fl;->A00(III)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/TF;

    invoke-direct {v0, v4, v3, v1}, Lcom/facebook/ads/redexgen/X/TF;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/fl;->A03:Lcom/facebook/ads/redexgen/X/TF;

    .line 2820
    const/16 v2, 0xa5

    const/4 v1, 0x5

    const/16 v0, 0x13

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/fl;->A00(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x8b

    const/4 v1, 0x4

    const/16 v0, 0x22

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/fl;->A00(III)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-instance v0, Lcom/facebook/ads/redexgen/X/TF;

    invoke-direct {v0, v2, v3, v1}, Lcom/facebook/ads/redexgen/X/TF;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/fl;->A02:Lcom/facebook/ads/redexgen/X/TF;

    .line 2821
    const/4 v0, 0x2

    new-array v1, v0, [Lcom/facebook/ads/redexgen/X/TF;

    sget-object v0, Lcom/facebook/ads/redexgen/X/fl;->A03:Lcom/facebook/ads/redexgen/X/TF;

    aput-object v0, v1, v4

    sget-object v0, Lcom/facebook/ads/redexgen/X/fl;->A02:Lcom/facebook/ads/redexgen/X/TF;

    aput-object v0, v1, v2

    sput-object v1, Lcom/facebook/ads/redexgen/X/fl;->A04:[Lcom/facebook/ads/redexgen/X/TF;

    .line 2822
    const-class v0, Lcom/facebook/ads/redexgen/X/fl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/fl;->A08:Ljava/lang/String;

    .line 2823
    sget-object v3, Lcom/facebook/ads/redexgen/X/fl;->A04:[Lcom/facebook/ads/redexgen/X/TF;

    const/16 v2, 0xb2

    const/4 v1, 0x6

    const/16 v0, 0x55

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/fl;->A00(III)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/facebook/ads/redexgen/X/TL;->A02(Ljava/lang/String;[Lcom/facebook/ads/redexgen/X/TF;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/fl;->A06:Ljava/lang/String;

    .line 2824
    sget-object v1, Lcom/facebook/ads/redexgen/X/fl;->A04:[Lcom/facebook/ads/redexgen/X/TF;

    sget-object v0, Lcom/facebook/ads/redexgen/X/fl;->A02:Lcom/facebook/ads/redexgen/X/TF;

    .line 2825
    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/TL;->A03(Ljava/lang/String;[Lcom/facebook/ads/redexgen/X/TF;Lcom/facebook/ads/redexgen/X/TF;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/fl;->A07:Ljava/lang/String;

    .line 2826
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x5

    const/16 v1, 0x47

    const/16 v0, 0x50

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/fl;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/fl;->A03:Lcom/facebook/ads/redexgen/X/TF;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/TF;->A01:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v1, 0x3

    const/16 v0, 0x38

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/fl;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0x9f

    const/4 v1, 0x6

    const/16 v0, 0x45

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/fl;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x4

    const/4 v1, 0x1

    const/16 v0, 0x67

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/fl;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/fs;->A09:Lcom/facebook/ads/redexgen/X/TF;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/TF;->A01:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x3

    const/4 v1, 0x1

    const/16 v0, 0x63

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/fl;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/fl;->A05:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/TH;)V
    .locals 0

    .line 82642
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/TL;-><init>(Lcom/facebook/ads/redexgen/X/TH;)V

    .line 82643
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/fl;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x62

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A04()V
    .locals 1

    const/16 v0, 0xb8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/fl;->A00:[B

    return-void

    :array_0
    .array-data 1
        0x7at
        0x67t
        0x7at
        0x28t
        0x2bt
        0x76t
        0x77t
        0x7et
        0x77t
        0x66t
        0x77t
        0x12t
        0x74t
        0x60t
        0x7dt
        0x7ft
        0x12t
        0x46t
        0x5dt
        0x59t
        0x57t
        0x5ct
        0x41t
        0x12t
        0x65t
        0x7at
        0x77t
        0x60t
        0x77t
        0x12t
        0x7ct
        0x7dt
        0x66t
        0x12t
        0x77t
        0x6at
        0x7bt
        0x61t
        0x66t
        0x61t
        0x12t
        0x1at
        0x61t
        0x77t
        0x7et
        0x77t
        0x71t
        0x66t
        0x12t
        0x3t
        0x12t
        0x74t
        0x60t
        0x7dt
        0x7ft
        0x12t
        0x57t
        0x44t
        0x57t
        0x5ct
        0x46t
        0x41t
        0x12t
        0x65t
        0x7at
        0x77t
        0x60t
        0x77t
        0x12t
        0x46t
        0x5dt
        0x59t
        0x57t
        0x5ct
        0x41t
        0x1ct
        0x1bt
        0x26t
        0x3dt
        0x3bt
        0x2et
        0x2at
        0x37t
        0x31t
        0x30t
        0x7et
        0x29t
        0x36t
        0x3bt
        0x30t
        0x7et
        0x2at
        0x2ct
        0x27t
        0x37t
        0x30t
        0x39t
        0x7et
        0x2at
        0x31t
        0x7et
        0x3at
        0x3bt
        0x32t
        0x3bt
        0x2at
        0x3bt
        0x7et
        0x3dt
        0x36t
        0x37t
        0x32t
        0x3at
        0x32t
        0x3bt
        0x2dt
        0x2dt
        0x7et
        0x2at
        0x31t
        0x35t
        0x3bt
        0x30t
        0x2dt
        0x70t
        0x7ct
        0x5bt
        0x43t
        0x54t
        0x59t
        0x5ct
        0x51t
        0x15t
        0x41t
        0x5at
        0x5et
        0x50t
        0x5bt
        0x1bt
        0x14t
        0x5t
        0x18t
        0x14t
        0x24t
        0x35t
        0x28t
        0x24t
        0x50t
        0x20t
        0x22t
        0x39t
        0x3dt
        0x31t
        0x22t
        0x29t
        0x50t
        0x3bt
        0x35t
        0x29t
        0x42t
        0x51t
        0x42t
        0x49t
        0x53t
        0x54t
        0x5t
        0x1et
        0x1at
        0x14t
        0x1ft
        0x7dt
        0x66t
        0x62t
        0x6ct
        0x67t
        0x56t
        0x60t
        0x6dt
        0x43t
        0x58t
        0x5ct
        0x52t
        0x59t
        0x44t
    .end array-data
.end method


# virtual methods
.method public final A06()Ljava/lang/String;
    .locals 3

    .line 82644
    const/16 v2, 0xb2

    const/4 v1, 0x6

    const/16 v0, 0x55

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/fl;->A00(III)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final A0A()[Lcom/facebook/ads/redexgen/X/TF;
    .locals 1

    .line 82645
    sget-object v0, Lcom/facebook/ads/redexgen/X/fl;->A04:[Lcom/facebook/ads/redexgen/X/TF;

    return-object v0
.end method

.method public final A0B()Landroid/database/Cursor;
    .locals 3

    .line 82646
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/TL;->A05()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    sget-object v1, Lcom/facebook/ads/redexgen/X/fl;->A06:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public final A0C(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Landroid/database/sqlite/SQLiteException;
        }
    .end annotation

    .line 82647
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 82648
    const/4 v6, 0x0

    .line 82649
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/TL;->A05()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 82650
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    sget-object v1, Lcom/facebook/ads/redexgen/X/fl;->A07:Ljava/lang/String;

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 82651
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    const/4 v7, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/facebook/ads/redexgen/X/fl;->A03:Lcom/facebook/ads/redexgen/X/TF;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/TF;->A00:I

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 82652
    .local v2, "existingTokenId":Ljava/lang/String;
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_1

    .line 82653
    :cond_0
    move-object v1, v7

    goto :goto_0

    .line 82654
    :goto_1
    if-nez v0, :cond_2

    .line 82655
    if-eqz v6, :cond_1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82656
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 82657
    :cond_1
    return-object v1

    .line 82658
    :cond_2
    :try_start_1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    .line 82659
    .local v4, "newTokenId":Ljava/lang/String;
    const/4 v0, 0x2

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 82660
    .local v5, "values":Landroid/content/ContentValues;
    sget-object v0, Lcom/facebook/ads/redexgen/X/fl;->A03:Lcom/facebook/ads/redexgen/X/TF;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/TF;->A01:Ljava/lang/String;

    invoke-virtual {v1, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 82661
    sget-object v0, Lcom/facebook/ads/redexgen/X/fl;->A02:Lcom/facebook/ads/redexgen/X/TF;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/TF;->A01:Ljava/lang/String;

    invoke-virtual {v1, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 82662
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/TL;->A05()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    const/16 v3, 0xb2

    const/4 v2, 0x6

    const/16 v0, 0x55

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/fl;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v7, v1}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 82663
    if-eqz v6, :cond_3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 82664
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 82665
    :cond_3
    return-object v5

    .line 82666
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "existingTokenId":Ljava/lang/String;
    .end local v4    # "newTokenId":Ljava/lang/String;
    .end local v5    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 82667
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 82668
    :cond_4
    throw v0

    .line 82669
    .end local v0    # "cursor":Landroid/database/Cursor;
    :cond_5
    const/16 v2, 0x7d

    const/16 v1, 0xe

    const/16 v0, 0x57

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/fl;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final A0D(Lcom/facebook/ads/redexgen/X/ge;)V
    .locals 5

    .line 82670
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/TL;->A05()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/fl;->A05:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_0
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82671
    :catch_0
    move-exception v4

    .line 82672
    .local v0, "sqle":Landroid/database/SQLException;
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/T8;->A05()Lcom/facebook/ads/redexgen/X/TD;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/fl;->A01:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/16 v0, 0xe

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6c

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/fl;->A01:[Ljava/lang/String;

    const-string v1, "zGpOEoeFk9mKuFaHfebiepQHWPBtYRlV"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "gQOnf7kUk2P1iMeHKJrfxPX4gK9wMRl8"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-interface {v3}, Lcom/facebook/ads/redexgen/X/TD;->AAO()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82673
    sget-object v3, Lcom/facebook/ads/redexgen/X/fl;->A08:Ljava/lang/String;

    const/16 v2, 0x4c

    const/16 v1, 0x31

    const/16 v0, 0x3c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/fl;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 82674
    .end local v0    # "sqle":Landroid/database/SQLException;
    :cond_1
    :goto_0
    return-void
.end method
