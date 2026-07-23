.class public final Lcom/facebook/ads/redexgen/X/40;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/3z;
    }
.end annotation


# static fields
.field public static A02:[B

.field public static A03:[Ljava/lang/String;


# instance fields
.field public final A00:Ljava/io/File;

.field public final A01:Ljava/io/File;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 163
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "xt7OJkzoRAU9F21vTA99nWdYHEgU1aqe"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "agkrpda7Xp"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "R"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "5vNqnHOJCumqZOnLm9qFfz6JcwPphcfm"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "ZSdlC9FQn5pQkXbUirih3rU8AE2dOqgO"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "058ZJGrrLXJjuDHx9oXjnYONx8ueRFml"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "p8wyR2SRaX4jfTsJEE0Ho6ErxYgTWBLm"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "ZJmK2n287z"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/40;->A03:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/40;->A02()V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 4

    .line 11088
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11089
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/40;->A01:Ljava/io/File;

    .line 11090
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0x10

    const/4 v1, 0x4

    const/16 v0, 0x58

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/40;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/40;->A00:Ljava/io/File;

    .line 11091
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/40;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x4f

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A01()V
    .locals 2

    .line 11092
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/40;->A00:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11093
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/40;->A01:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 11094
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/40;->A00:Ljava/io/File;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/40;->A01:Ljava/io/File;

    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 11095
    :cond_0
    return-void
.end method

.method public static A02()V
    .locals 1

    const/16 v0, 0x43

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/40;->A02:[B

    return-void

    :array_0
    .array-data 1
        -0x45t
        0xft
        0xat
        -0x45t
        -0x3t
        -0x4t
        -0x2t
        0x6t
        0x10t
        0xbt
        -0x45t
        0x1t
        0x4t
        0x7t
        0x0t
        -0x45t
        -0x2bt
        0x9t
        0x8t
        0x12t
        -0x40t
        -0xdt
        -0x12t
        -0x14t
        -0x18t
        -0x1et
        -0x3bt
        -0x18t
        -0x15t
        -0x1ct
        0x6t
        0x32t
        0x38t
        0x2ft
        0x27t
        0x31t
        -0x16t
        0x37t
        -0x1dt
        0x26t
        0x35t
        0x28t
        0x24t
        0x37t
        0x28t
        -0x1dt
        -0xdt
        0x1ft
        0x25t
        0x1ct
        0x14t
        0x1et
        -0x29t
        0x24t
        -0x30t
        0x22t
        0x15t
        0x1et
        0x11t
        0x1dt
        0x15t
        -0x30t
        0x16t
        0x19t
        0x1ct
        0x15t
        -0x30t
    .end array-data
.end method


# virtual methods
.method public final A03()Lcom/facebook/ads/redexgen/X/3z;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11096
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/40;->A01:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 11097
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/40;->A00:Ljava/io/File;

    sget-object v2, Lcom/facebook/ads/redexgen/X/40;->A03:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/40;->A03:[Ljava/lang/String;

    const-string v1, "WaNlpEO0EesrYpEsZIaqNMFL0IgmF9T8"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 11098
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/40;->A01:Ljava/io/File;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/40;->A00:Ljava/io/File;

    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/40;->A03:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v2, v2, v0

    const/4 v0, 0x5

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/40;->A03:[Ljava/lang/String;

    const-string v1, "Kt2izesvv7R2DCfklGYX0jErBdo4LMwT"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "3ZhItr65AZc3uqV8hBhNNn4gHqhWY2uE"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-nez v3, :cond_3

    .line 11099
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x2e

    const/16 v1, 0x15

    const/16 v0, 0x61

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/40;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/40;->A01:Ljava/io/File;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0x10

    const/16 v0, 0x4c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/40;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/40;->A00:Ljava/io/File;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x14

    const/16 v1, 0xa

    const/16 v0, 0x30

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/40;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/4g;->A07(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/40;->A03:[Ljava/lang/String;

    const-string v1, "qsL8i3rJfSd1ZoM6"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-nez v3, :cond_3

    goto :goto_0

    .line 11100
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/40;->A01:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 11101
    :cond_3
    :goto_1
    :try_start_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/40;->A01:Ljava/io/File;

    new-instance v0, Lcom/facebook/ads/redexgen/X/3z;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/3z;-><init>(Ljava/io/File;)V

    goto :goto_2
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11102
    .end local v0
    :catch_0
    move-exception v5

    .line 11103
    .local v0, "e":Ljava/io/FileNotFoundException;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/40;->A01:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    .line 11104
    .local v1, "parent":Ljava/io/File;
    const/16 v2, 0x1e

    const/16 v1, 0x10

    const/16 v0, 0x74

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/40;->A00(III)Ljava/lang/String;

    move-result-object v3

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 11105
    :try_start_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/40;->A01:Ljava/io/File;

    new-instance v0, Lcom/facebook/ads/redexgen/X/3z;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/3z;-><init>(Ljava/io/File;)V

    .line 11106
    .end local v1    # "parent":Ljava/io/File;
    .end local v2
    .local v0, "str":Ljava/io/OutputStream;
    :goto_2
    return-object v0
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 11107
    .local v0, "e":Ljava/io/FileNotFoundException;
    .restart local v1    # "parent":Ljava/io/File;
    :catch_1
    move-exception v2

    .line 11108
    .local v3, "e2":Ljava/io/FileNotFoundException;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/40;->A01:Ljava/io/File;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 11109
    .end local v3    # "e2":Ljava/io/FileNotFoundException;
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/40;->A01:Ljava/io/File;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v1, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final A04()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 11110
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/40;->A01()V

    .line 11111
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/40;->A01:Ljava/io/File;

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public final A05()V
    .locals 1

    .line 11112
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/40;->A01:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 11113
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/40;->A00:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 11114
    return-void
.end method

.method public final A06(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11115
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    .line 11116
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/40;->A00:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 11117
    return-void
.end method

.method public final A07()Z
    .locals 1

    .line 11118
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/40;->A01:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/40;->A00:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
