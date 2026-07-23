.class public Lcom/facebook/ads/redexgen/X/pI;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/5O;


# static fields
.field public static A00:[B

.field public static A01:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 3345
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "YuTOcDzSk33WzGuHUm34fIUZdR6FzBSo"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "XTKHU7ykX6HxNiJgN0rgjCseZECTQtra"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "VEZqd6OFp5mQyS5r43nHHulMPiVDQ9eW"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "aLYnSlPQY916exG9yEmf5vg4GfwoTrU7"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "tF23Z6GUlh0Fjg1gJR8XevpVUkpWaXM2"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "mepItLhmIU8NS8JNKSf8apCSosOFfjC4"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "Cz0Pux5KFog27POOTk7sr9rS4XUT"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "HqOHPFLqaLH3svqHIBOSrAzDJwUDQThi"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/pI;->A01:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/pI;->A01()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .line 104056
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/16 v2, 0x32

    const/16 v1, 0x15

    const/16 v0, 0x3d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/pI;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v5, v0, v4, v3}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 104057
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/pI;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 p1, 0x0

    :goto_0
    array-length v0, p0

    if-ge p1, v0, :cond_1

    aget-byte v0, p0, p1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x2c

    int-to-byte v3, v0

    sget-object v2, Lcom/facebook/ads/redexgen/X/pI;->A01:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v2, v2, v0

    const/16 v0, 0x16

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/pI;->A01:[Ljava/lang/String;

    const-string v1, "n1qaiWHrUpNnLAu01u7Aygvt6fyaUUnG"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "NzqeYJq8DJ4S2vkSjhcMbPo6SDo1HpGr"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    aput-byte v3, p0, p1

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
    .locals 1

    const/16 v0, 0x6b

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/pI;->A00:[B

    return-void

    :array_0
    .array-data 1
        0x68t
        0x1t
        0xet
        0x68t
        0xdt
        0x10t
        0x1t
        0x1bt
        0x1ct
        0x1bt
        0x68t
        0x50t
        0x46t
        0x5bt
        0x44t
        0x34t
        0x5et
        0x69t
        0x69t
        0x74t
        0x69t
        0x3bt
        0x7et
        0x63t
        0x7et
        0x78t
        0x6et
        0x6ft
        0x72t
        0x75t
        0x7ct
        0x3bt
        0x38t
        0x2at
        0x2ft
        0xat
        0x1ft
        0xat
        0x9t
        0xat
        0x18t
        0xet
        0x3bt
        0x19t
        0x4t
        0x1dt
        0x2t
        0xft
        0xet
        0x19t
        0x74t
        0x69t
        0x7et
        0x61t
        0x7dt
        0x70t
        0x68t
        0x74t
        0x63t
        0x4et
        0x78t
        0x7ft
        0x65t
        0x74t
        0x63t
        0x7ft
        0x70t
        0x7dt
        0x3ft
        0x75t
        0x73t
        0x3ft
        0x30t
        0x3ct
        0x34t
        0x19t
        0x1bt
        0x6t
        0x3t
        0x1et
        0xft
        0x35t
        0x7t
        0xbt
        0x19t
        0x1et
        0xft
        0x18t
        0x22t
        0x20t
        0x3dt
        0x38t
        0x25t
        0x34t
        0xet
        0x22t
        0x34t
        0x20t
        0x24t
        0x34t
        0x3ft
        0x32t
        0x34t
        0x40t
        0x4dt
        0x44t
        0x51t
    .end array-data
.end method

.method public static A02(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 16

    .line 104058
    const/16 v2, 0x67

    const/4 v1, 0x4

    const/16 v0, 0x18

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/pI;->A00(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x47

    const/4 v1, 0x4

    const/16 v0, 0x7d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/pI;->A00(III)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v3, v0}, [Ljava/lang/String;

    move-result-object v10

    .line 104059
    .local v4, "columns":[Ljava/lang/String;
    const/16 v2, 0x4b

    const/16 v1, 0xd

    const/16 v0, 0x46

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/pI;->A00(III)Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v8, p0

    invoke-virtual/range {v8 .. v15}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 104060
    .local v0, "cursor":Landroid/database/Cursor;
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 104061
    const/4 v0, 0x0

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 104062
    .local v1, "type":Ljava/lang/String;
    const/4 v0, 0x1

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 104063
    .local v2, "name":Ljava/lang/String;
    const/16 v2, 0x58

    const/16 v1, 0xf

    const/16 v0, 0x7d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/pI;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 104064
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xb

    const/4 v1, 0x5

    const/16 v0, 0x38

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/pI;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0xb

    const/16 v0, 0x64

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/pI;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104065
    .local v3, "sql":Ljava/lang/String;
    :try_start_1
    invoke-virtual {v8, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_0
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 104066
    :catch_0
    move-exception v6

    .line 104067
    .local v5, "e":Landroid/database/SQLException;
    :try_start_2
    const/16 v2, 0x20

    const/16 v1, 0x12

    const/16 v0, 0x47

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/pI;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x10

    const/16 v2, 0x10

    const/16 v0, 0x37

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/pI;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v6}, Lcom/facebook/ads/redexgen/X/4g;->A08(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 104068
    :cond_1
    if-eqz v5, :cond_2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 104069
    .end local v0    # "cursor":Landroid/database/Cursor;
    :cond_2
    return-void

    .line 104070
    .restart local v0    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v1

    if-eqz v5, :cond_3

    :try_start_3
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    goto :goto_1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    throw v1
.end method


# virtual methods
.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .line 104071
    return-void
.end method

.method public final onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    .line 104072
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/pI;->A02(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 104073
    return-void
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    .line 104074
    return-void
.end method
