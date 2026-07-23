.class public final Lcom/google/common/base/Strings;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Lcom/google/common/base/ElementTypesAreNonnullByDefault;
.end annotation


# static fields
.field public static A00:[B

.field public static A01:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 3170
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "rJg0GTHRX"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "K9dQxfkFvyPrqanCyvVi9t8TsdGmyNgC"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "tUuj0V7XDkeAi6SkgPTUgMEzqoPOG2wI"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "s5Ev4BEaYYaheBbHJPARkFomt6p83FKm"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "U0fqfbzQ6IMhOxnuinQg0kR"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "WEAQUpFs2V4MiUsuqBnPNaxCCDrbqZTD"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "9mERPiqnqMQrbOPuWUaYAoq2giX9Yyaq"

    aput-object v0, v2, v1

    sput-object v2, Lcom/google/common/base/Strings;->A01:[Ljava/lang/String;

    invoke-static {}, Lcom/google/common/base/Strings;->A03()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 91852
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/google/common/base/Strings;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01(Ljava/lang/Object;)Ljava/lang/String;
    .locals 7
    .param p0    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 91853
    if-nez p0, :cond_0

    .line 91854
    const/16 v2, 0x5e

    const/4 v1, 0x4

    const/16 v0, 0x57

    invoke-static {v2, v1, v0}, Lcom/google/common/base/Strings;->A00(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 91855
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91856
    :catch_0
    move-exception v4

    .line 91857
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 91858
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v0, 0x40

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 91859
    .local v1, "objectToString":Ljava/lang/String;
    const/16 v2, 0x40

    const/16 v1, 0x1e

    const/16 v0, 0x47

    invoke-static {v2, v1, v0}, Lcom/google/common/base/Strings;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object p0

    sget-object v6, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x1d

    const/16 v1, 0x23

    const/16 v0, 0x77

    invoke-static {v2, v1, v0}, Lcom/google/common/base/Strings;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 91860
    invoke-virtual {p0, v6, v0, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 91861
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x1b

    const/4 v1, 0x1

    const/16 v0, 0x2c

    invoke-static {v2, v1, v0}, Lcom/google/common/base/Strings;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x2

    const/4 v1, 0x7

    const/16 v0, 0x77

    invoke-static {v2, v1, v0}, Lcom/google/common/base/Strings;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0x1c

    const/4 v1, 0x1

    const/16 v0, 0x46

    invoke-static {v2, v1, v0}, Lcom/google/common/base/Strings;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs A02(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 6
    .param p0    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .param p1    # [Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "template",
            "args"
        }
    .end annotation

    .line 91862
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 91863
    if-nez p1, :cond_3

    .line 91864
    const/4 v0, 0x1

    new-array p1, v0, [Ljava/lang/Object;

    const/16 v2, 0xb

    const/16 v1, 0xe

    const/16 v0, 0x46

    invoke-static {v2, v1, v0}, Lcom/google/common/base/Strings;->A00(III)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    aput-object v1, p1, v0

    .line 91865
    .end local v0
    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    array-length v0, p1

    mul-int/lit8 v0, v0, 0x10

    add-int/2addr v1, v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 91866
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 p0, 0x0

    .line 91867
    .local v1, "templateStart":I
    const/4 v5, 0x0

    .line 91868
    .local v2, "i":I
    :goto_0
    array-length v0, p1

    if-ge v5, v0, :cond_1

    .line 91869
    const/16 v2, 0x9

    const/4 v1, 0x2

    const/16 v0, 0x33

    invoke-static {v2, v1, v0}, Lcom/google/common/base/Strings;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 91870
    .local v3, "placeholderStart":I
    const/4 v0, -0x1

    if-ne v2, v0, :cond_2

    .line 91871
    .end local v4
    .restart local v2    # "i":I
    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v4, v3, p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 91872
    array-length v0, p1

    if-ge v5, v0, :cond_5

    .line 91873
    const/4 v2, 0x0

    const/4 v1, 0x2

    const/16 v0, 0x5e

    invoke-static {v2, v1, v0}, Lcom/google/common/base/Strings;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91874
    add-int/lit8 v3, v5, 0x1

    .end local v2    # "i":I
    .local v3, "i":I
    aget-object v0, p1, v5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 91875
    .end local v3    # "i":I
    .restart local v2    # "i":I
    :goto_1
    array-length v0, p1

    if-ge v3, v0, :cond_4

    .line 91876
    const/16 v2, 0x19

    const/4 v1, 0x2

    const/16 v0, 0x64

    invoke-static {v2, v1, v0}, Lcom/google/common/base/Strings;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91877
    add-int/lit8 v1, v3, 0x1

    .end local v2    # "i":I
    .restart local v3    # "i":I
    aget-object v0, p1, v3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move v3, v1

    goto :goto_1

    .line 91878
    :cond_2
    invoke-virtual {v4, v3, p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 91879
    add-int/lit8 v1, v5, 0x1

    .end local v2
    .local v4, "i":I
    aget-object v0, p1, v5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 91880
    add-int/lit8 p0, v2, 0x2

    .line 91881
    .end local v3    # "i":I
    move v5, v1

    goto :goto_0

    .line 91882
    :cond_3
    const/4 v1, 0x0

    .local v0, "i":I
    :goto_2
    array-length v0, p1

    if-ge v1, v0, :cond_0

    .line 91883
    aget-object v0, p1, v1

    invoke-static {v0}, Lcom/google/common/base/Strings;->A01(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v1

    .line 91884
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 91885
    .end local v3
    .restart local v2    # "i":I
    :cond_4
    const/16 v0, 0x5d

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 91886
    :cond_5
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v2, Lcom/google/common/base/Strings;->A01:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v2, v2, v0

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_6

    sget-object v2, Lcom/google/common/base/Strings;->A01:[Ljava/lang/String;

    const-string v1, "Qm2mYSTY5Rq3J9usgP1HZ6PJLyEDSebu"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "9oyFi5AVRUYlh10JePir3xWfNUiO2b4f"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    return-object v3

    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A03()V
    .locals 1

    const/16 v0, 0x62

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/common/base/Strings;->A00:[B

    return-void

    :array_0
    .array-data 1
        0x7ct
        0x7t
        0x55t
        0x1t
        0x1dt
        0x7t
        0x10t
        0x2t
        0x55t
        0x14t
        0x42t
        0x6ct
        0xbt
        0x26t
        0x2et
        0x21t
        0x27t
        0x30t
        0x1ft
        0x19t
        0x6dt
        0x2at
        0x31t
        0x28t
        0x28t
        0x4at
        0x46t
        0x12t
        0x7at
        0x30t
        0xdt
        0x16t
        0x10t
        0x5t
        0x1t
        0x1ct
        0x1at
        0x1bt
        0x55t
        0x11t
        0x0t
        0x7t
        0x1ct
        0x1bt
        0x12t
        0x55t
        0x19t
        0x10t
        0x1bt
        0x1ct
        0x10t
        0x1bt
        0x1t
        0x33t
        0x1at
        0x7t
        0x18t
        0x14t
        0x1t
        0x55t
        0x13t
        0x1at
        0x7t
        0x55t
        0x26t
        0x2at
        0x28t
        0x6bt
        0x22t
        0x2at
        0x2at
        0x22t
        0x29t
        0x20t
        0x6bt
        0x26t
        0x2at
        0x28t
        0x28t
        0x2at
        0x2bt
        0x6bt
        0x27t
        0x24t
        0x36t
        0x20t
        0x6bt
        0x16t
        0x31t
        0x37t
        0x2ct
        0x2bt
        0x22t
        0x36t
        0x3bt
        0x20t
        0x39t
        0x39t
    .end array-data
.end method
