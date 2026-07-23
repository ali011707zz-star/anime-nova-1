.class public final Lcom/facebook/ads/redexgen/X/kQ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Mh;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Mi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DatabaseStorage"
.end annotation


# static fields
.field public static A04:[B

.field public static final A05:[Ljava/lang/String;


# instance fields
.field public A00:Ljava/lang/String;

.field public A01:Ljava/lang/String;

.field public final A02:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/facebook/ads/redexgen/X/Mg;",
            ">;"
        }
    .end annotation
.end field

.field public final A03:Lcom/facebook/ads/redexgen/X/5O;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 3162
    invoke-static {}, Lcom/facebook/ads/redexgen/X/kQ;->A03()V

    const/16 v2, 0x88

    const/4 v1, 0x3

    const/16 v0, 0x25

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/kQ;->A01(III)Ljava/lang/String;

    move-result-object v4

    const/16 v2, 0x8b

    const/16 v1, 0x8

    const/4 v0, 0x1

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/kQ;->A01(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x80

    const/4 v1, 0x2

    const/16 v0, 0x30

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/kQ;->A01(III)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0, v4, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/kQ;->A05:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/5O;)V
    .locals 1

    .line 90160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90161
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/kQ;->A03:Lcom/facebook/ads/redexgen/X/5O;

    .line 90162
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/kQ;->A02:Landroid/util/SparseArray;

    .line 90163
    return-void
.end method

.method private A00()Landroid/database/Cursor;
    .locals 9

    .line 90164
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kQ;->A03:Lcom/facebook/ads/redexgen/X/5O;

    .line 90165
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/5O;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kQ;->A01:Ljava/lang/String;

    .line 90166
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v3, Lcom/facebook/ads/redexgen/X/kQ;->A05:[Ljava/lang/String;

    .line 90167
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 90168
    return-object v0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/kQ;->A04:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A02(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 90169
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x6d

    const/16 v1, 0x13

    const/16 v0, 0x6d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/kQ;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static A03()V
    .locals 1

    const/16 v0, 0x93

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/kQ;->A04:[B

    return-void

    :array_0
    .array-data 1
        0x37t
        0x2bt
        0x6at
        0x67t
        0x23t
        0x4at
        0x4dt
        0x57t
        0x46t
        0x44t
        0x46t
        0x51t
        0x23t
        0x53t
        0x51t
        0x4at
        0x4et
        0x42t
        0x51t
        0x5at
        0x23t
        0x48t
        0x46t
        0x5at
        0x23t
        0x4dt
        0x4ct
        0x57t
        0x23t
        0x4dt
        0x56t
        0x4ft
        0x4ft
        0x2ft
        0x68t
        0x66t
        0x7at
        0x23t
        0x57t
        0x46t
        0x5bt
        0x57t
        0x23t
        0x4dt
        0x4ct
        0x57t
        0x23t
        0x4dt
        0x56t
        0x4ft
        0x4ft
        0x2ft
        0x6et
        0x66t
        0x77t
        0x62t
        0x67t
        0x62t
        0x77t
        0x62t
        0x23t
        0x41t
        0x4ft
        0x4ct
        0x41t
        0x23t
        0x4dt
        0x4ct
        0x57t
        0x23t
        0x4dt
        0x56t
        0x4ft
        0x4ft
        0x2at
        0x2et
        0x3ft
        0x28t
        0x2ct
        0x39t
        0x28t
        0x4dt
        0x39t
        0x2ct
        0x2ft
        0x21t
        0x28t
        0x4dt
        0x6t
        0x10t
        0xdt
        0x12t
        0x62t
        0x16t
        0x3t
        0x0t
        0xet
        0x7t
        0x62t
        0xbt
        0x4t
        0x62t
        0x7t
        0x1at
        0xbt
        0x11t
        0x16t
        0x11t
        0x62t
        0x29t
        0x14t
        0x3t
        0x3ct
        0x0t
        0xdt
        0x15t
        0x9t
        0x1et
        0x2ft
        0xdt
        0xft
        0x4t
        0x9t
        0x25t
        0x2t
        0x8t
        0x9t
        0x14t
        0x58t
        0x55t
        0x12t
        0x1ft
        0x5bt
        0x46t
        0x5bt
        0x44t
        0x4ft
        0x41t
        0x5dt
        0x6dt
        0x65t
        0x74t
        0x61t
        0x64t
        0x61t
        0x74t
        0x61t
    .end array-data
.end method

.method private A04(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/5N;
        }
    .end annotation

    .line 90170
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kQ;->A00:Ljava/lang/String;

    .line 90171
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 90172
    const/4 v0, 0x1

    invoke-static {p1, v0, v1, v0}, Lcom/facebook/ads/redexgen/X/5Q;->A04(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;I)V

    .line 90173
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kQ;->A01:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/kQ;->A07(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 90174
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x4b

    const/16 v1, 0xd

    const/16 v0, 0x6c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/kQ;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kQ;->A01:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v0, 0x16

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/kQ;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x1

    const/16 v1, 0x4a

    const/4 v0, 0x2

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/kQ;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 90175
    return-void
.end method

.method private A05(Landroid/database/sqlite/SQLiteDatabase;I)V
    .locals 5

    .line 90176
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kQ;->A01:Ljava/lang/String;

    .line 90177
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    .line 90178
    const/16 v2, 0x82

    const/4 v1, 0x6

    const/16 v0, 0x7a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/kQ;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v4, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 90179
    return-void
.end method

.method private A06(Landroid/database/sqlite/SQLiteDatabase;Lcom/facebook/ads/redexgen/X/Mg;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 90180
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 90181
    .local v0, "outputStream":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Mg;->A03()Lcom/facebook/ads/redexgen/X/kN;

    move-result-object v1

    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Mi;->A09(Lcom/facebook/ads/redexgen/X/kN;Ljava/io/DataOutputStream;)V

    .line 90182
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 90183
    .local v1, "data":[B
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 90184
    .local v2, "values":Landroid/content/ContentValues;
    iget v0, p2, Lcom/facebook/ads/redexgen/X/Mg;->A01:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v2, 0x80

    const/4 v1, 0x2

    const/16 v0, 0x30

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/kQ;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 90185
    const/16 v2, 0x88

    const/4 v1, 0x3

    const/16 v0, 0x25

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/kQ;->A01(III)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p2, Lcom/facebook/ads/redexgen/X/Mg;->A02:Ljava/lang/String;

    invoke-virtual {v3, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 90186
    const/16 v2, 0x8b

    const/16 v1, 0x8

    const/4 v0, 0x1

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/kQ;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 90187
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kQ;->A01:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->replaceOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 90188
    return-void
.end method

.method public static A07(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 4

    .line 90189
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x58

    const/16 v1, 0x15

    const/16 v0, 0x43

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/kQ;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 90190
    return-void
.end method

.method public static A08(Lcom/facebook/ads/redexgen/X/5O;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/5N;
        }
    .end annotation

    .line 90191
    :try_start_0
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/kQ;->A02(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 90192
    .local v0, "tableName":Ljava/lang/String;
    invoke-interface {p0}, Lcom/facebook/ads/redexgen/X/5O;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 90193
    .local v1, "writableDatabase":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V

    .line 90194
    const/4 v0, 0x1
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {v1, v0, p1}, Lcom/facebook/ads/redexgen/X/5Q;->A03(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)V

    .line 90195
    invoke-static {v1, v2}, Lcom/facebook/ads/redexgen/X/kQ;->A07(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 90196
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 90197
    :try_start_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 90198
    .end local v0    # "tableName":Ljava/lang/String;
    .end local v1    # "writableDatabase":Landroid/database/sqlite/SQLiteDatabase;
    return-void

    .line 90199
    .restart local v0    # "tableName":Ljava/lang/String;
    .restart local v1    # "writableDatabase":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 90200
    .end local p0    # null:Lcom/facebook/ads/redexgen/X/5O;
    .end local p1    # null:Ljava/lang/String;
    throw v0
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    .line 90201
    .end local v0    # "tableName":Ljava/lang/String;
    .end local v1    # "writableDatabase":Landroid/database/sqlite/SQLiteDatabase;
    .restart local p0    # null:Lcom/facebook/ads/redexgen/X/5O;
    .restart local p1    # null:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 90202
    .local v0, "e":Landroid/database/SQLException;
    new-instance v0, Lcom/facebook/ads/redexgen/X/5N;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/5N;-><init>(Landroid/database/SQLException;)V

    throw v0
.end method


# virtual methods
.method public final A5p()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/5N;
        }
    .end annotation

    .line 90203
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/kQ;->A03:Lcom/facebook/ads/redexgen/X/5O;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kQ;->A00:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/kQ;->A08(Lcom/facebook/ads/redexgen/X/5O;Ljava/lang/String;)V

    .line 90204
    return-void
.end method

.method public final A6S()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/5N;
        }
    .end annotation

    .line 90205
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kQ;->A03:Lcom/facebook/ads/redexgen/X/5O;

    .line 90206
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/5O;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kQ;->A00:Ljava/lang/String;

    .line 90207
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 90208
    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/5Q;->A00(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)I

    move-result v1

    const/4 v0, -0x1

    if-eq v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90209
    :catch_0
    move-exception v1

    .line 90210
    .local v0, "e":Landroid/database/SQLException;
    new-instance v0, Lcom/facebook/ads/redexgen/X/5N;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/5N;-><init>(Landroid/database/SQLException;)V

    throw v0
.end method

.method public final AAF(J)V
    .locals 1

    .line 90211
    invoke-static {p1, p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/kQ;->A00:Ljava/lang/String;

    .line 90212
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kQ;->A00:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/kQ;->A02(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/kQ;->A01:Ljava/lang/String;

    .line 90213
    return-void
.end method

.method public final AAs(Ljava/util/HashMap;Landroid/util/SparseArray;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/redexgen/X/Mg;",
            ">;",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 90214
    .local p6, "content":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/facebook/ads/google/android/exoplayer2/upstream/cache/CachedContent;>;"
    .local p7, "idToKey":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kQ;->A02:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v6, 0x0

    const/4 v5, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A08(Z)V

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 90215
    :goto_1
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kQ;->A03:Lcom/facebook/ads/redexgen/X/5O;

    .line 90216
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/5O;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kQ;->A00:Ljava/lang/String;

    .line 90217
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 90218
    invoke-static {v1, v5, v0}, Lcom/facebook/ads/redexgen/X/5Q;->A00(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)I

    move-result v0

    .line 90219
    .local v0, "version":I
    if-eq v0, v5, :cond_1

    .line 90220
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kQ;->A03:Lcom/facebook/ads/redexgen/X/5O;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/5O;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 90221
    .local v3, "writableDatabase":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90222
    :try_start_1
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/kQ;->A04(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 90223
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    goto :goto_2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 90224
    :catchall_0
    :try_start_2
    move-exception v0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 90225
    .end local p6
    .end local p7
    throw v0

    .line 90226
    :goto_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 90227
    .end local v3    # "writableDatabase":Landroid/database/sqlite/SQLiteDatabase;
    .restart local p6
    .restart local p7
    :cond_1
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/kQ;->A00()Landroid/database/Cursor;

    move-result-object v4
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 90228
    .local v3, "cursor":Landroid/database/Cursor;
    :goto_3
    :try_start_3
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 90229
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 90230
    .local v4, "id":I
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 90231
    .local v5, "key":Ljava/lang/String;
    const/4 v0, 0x2

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 90232
    .local v6, "metadataBytes":[B
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 90233
    .local v7, "inputStream":Ljava/io/ByteArrayInputStream;
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 90234
    .local p0, "input":Ljava/io/DataInputStream;
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Mi;->A03(Ljava/io/DataInputStream;)Lcom/facebook/ads/redexgen/X/kN;

    move-result-object v0

    .line 90235
    .local p1, "metadata":Lcom/facebook/ads/redexgen/X/kN;
    new-instance v2, Lcom/facebook/ads/redexgen/X/Mg;

    invoke-direct {v2, v7, v3, v0}, Lcom/facebook/ads/redexgen/X/Mg;-><init>(ILjava/lang/String;Lcom/facebook/ads/redexgen/X/kN;)V

    .line 90236
    .local p2, "cachedContent":Lcom/facebook/ads/redexgen/X/Mg;
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Mg;->A02:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90237
    iget v1, v2, Lcom/facebook/ads/redexgen/X/Mg;->A01:I

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Mg;->A02:Ljava/lang/String;

    invoke-virtual {p2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_3

    .line 90238
    :cond_2
    if-eqz v4, :cond_3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 90239
    .end local v0    # "version":I
    .end local v3    # "cursor":Landroid/database/Cursor;
    :cond_3
    return-void
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 90240
    .restart local v0    # "version":I
    .restart local v3    # "cursor":Landroid/database/Cursor;
    :catchall_1
    move-exception v1

    if-eqz v4, :cond_4

    :try_start_5
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto :goto_4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception v0

    :try_start_6
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p6
    .end local p7
    :cond_4
    :goto_4
    throw v1
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_0

    .line 90241
    .end local v0    # "version":I
    .end local v3    # "cursor":Landroid/database/Cursor;
    .restart local p6
    .restart local p7
    :catch_0
    move-exception v1

    .line 90242
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 90243
    invoke-virtual {p2}, Landroid/util/SparseArray;->clear()V

    .line 90244
    new-instance v0, Lcom/facebook/ads/redexgen/X/5N;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/5N;-><init>(Landroid/database/SQLException;)V

    throw v0
.end method

.method public final AFd(Lcom/facebook/ads/redexgen/X/Mg;Z)V
    .locals 3

    .line 90245
    if-eqz p2, :cond_0

    .line 90246
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/kQ;->A02:Landroid/util/SparseArray;

    iget v0, p1, Lcom/facebook/ads/redexgen/X/Mg;->A01:I

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->delete(I)V

    .line 90247
    :goto_0
    return-void

    .line 90248
    :cond_0
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/kQ;->A02:Landroid/util/SparseArray;

    iget v1, p1, Lcom/facebook/ads/redexgen/X/Mg;->A01:I

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public final AGK(Lcom/facebook/ads/redexgen/X/Mg;)V
    .locals 2

    .line 90249
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/kQ;->A02:Landroid/util/SparseArray;

    iget v0, p1, Lcom/facebook/ads/redexgen/X/Mg;->A01:I

    invoke-virtual {v1, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 90250
    return-void
.end method

.method public final AKI(Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/redexgen/X/Mg;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 90251
    .local p1, "content":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/facebook/ads/google/android/exoplayer2/upstream/cache/CachedContent;>;"
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kQ;->A03:Lcom/facebook/ads/redexgen/X/5O;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/5O;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 90252
    .local v0, "writableDatabase":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90253
    :try_start_1
    invoke-direct {p0, v2}, Lcom/facebook/ads/redexgen/X/kQ;->A04(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 90254
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Mg;

    .line 90255
    .local v2, "cachedContent":Lcom/facebook/ads/redexgen/X/Mg;
    invoke-direct {p0, v2, v0}, Lcom/facebook/ads/redexgen/X/kQ;->A06(Landroid/database/sqlite/SQLiteDatabase;Lcom/facebook/ads/redexgen/X/Mg;)V

    goto :goto_0

    .line 90256
    :cond_0
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 90257
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kQ;->A02:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 90258
    :try_start_2
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 90259
    .end local v0    # "writableDatabase":Landroid/database/sqlite/SQLiteDatabase;
    return-void

    .line 90260
    .restart local v0    # "writableDatabase":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 90261
    .end local p1    # "content":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/facebook/ads/google/android/exoplayer2/upstream/cache/CachedContent;>;"
    throw v0
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    .line 90262
    .end local v0    # "writableDatabase":Landroid/database/sqlite/SQLiteDatabase;
    .restart local p1    # "content":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/facebook/ads/google/android/exoplayer2/upstream/cache/CachedContent;>;"
    :catch_0
    move-exception v1

    .line 90263
    .local v0, "e":Landroid/database/SQLException;
    new-instance v0, Lcom/facebook/ads/redexgen/X/5N;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/5N;-><init>(Landroid/database/SQLException;)V

    throw v0
.end method

.method public final AKJ(Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/redexgen/X/Mg;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 90264
    .local p2, "content":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/facebook/ads/google/android/exoplayer2/upstream/cache/CachedContent;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kQ;->A02:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 90265
    return-void

    .line 90266
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kQ;->A03:Lcom/facebook/ads/redexgen/X/5O;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/5O;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 90267
    .local v0, "writableDatabase":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V

    .line 90268
    const/4 v1, 0x0
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .local v1, "i":I
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kQ;->A02:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 90269
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kQ;->A02:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Mg;

    .line 90270
    .local v2, "cachedContent":Lcom/facebook/ads/redexgen/X/Mg;
    if-nez v0, :cond_1

    .line 90271
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kQ;->A02:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    invoke-direct {p0, v2, v0}, Lcom/facebook/ads/redexgen/X/kQ;->A05(Landroid/database/sqlite/SQLiteDatabase;I)V

    goto :goto_1

    .line 90272
    :cond_1
    invoke-direct {p0, v2, v0}, Lcom/facebook/ads/redexgen/X/kQ;->A06(Landroid/database/sqlite/SQLiteDatabase;Lcom/facebook/ads/redexgen/X/Mg;)V

    .line 90273
    .end local v2    # "cachedContent":Lcom/facebook/ads/redexgen/X/Mg;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 90274
    .end local v1    # "i":I
    :cond_2
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 90275
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kQ;->A02:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 90276
    :try_start_2
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 90277
    .end local v0    # "writableDatabase":Landroid/database/sqlite/SQLiteDatabase;
    return-void

    .line 90278
    .restart local v0    # "writableDatabase":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 90279
    .end local p2
    throw v0
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    .line 90280
    .end local v0    # "writableDatabase":Landroid/database/sqlite/SQLiteDatabase;
    .restart local p2
    :catch_0
    move-exception v1

    .line 90281
    .local v0, "e":Landroid/database/SQLException;
    new-instance v0, Lcom/facebook/ads/redexgen/X/5N;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/5N;-><init>(Landroid/database/SQLException;)V

    throw v0
.end method
