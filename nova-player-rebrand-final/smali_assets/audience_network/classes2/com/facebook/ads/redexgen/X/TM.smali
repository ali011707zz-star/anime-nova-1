.class public final Lcom/facebook/ads/redexgen/X/TM;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A04:Ljava/util/regex/Pattern;

.field public static A05:[B

.field public static A06:[Ljava/lang/String;


# instance fields
.field public final A00:Ljava/lang/Integer;

.field public final A01:Ljava/lang/Integer;

.field public final A02:Ljava/lang/String;

.field public final A03:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1701
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "USoK2cfxb51ZJPCyGLsl1oEqVq4F5A"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "B1ix"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "MKuQHzHoWScniLIuJtRpdi1IJiBszR7E"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "m0RxAiB9UHr66yFH4"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "lCsnFXMtzGCTFRX1SzzVAUWLGsHIck98"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "YGB3OCwtMa2btxklJ7dtSCpn0L9PAA"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "mK9fNeoXOGHAzqgN16GdwH9jtGNP"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "UNrKSlTWuiH4lc0MNDNSZyV"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/TM;->A06:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/TM;->A04()V

    return-void
.end method

.method public constructor <init>(Ljava/util/Set;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 65193
    .local p1, "options":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65194
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/TM;->A03:Ljava/util/Set;

    .line 65195
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/TM;->A03:Ljava/util/Set;

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 65196
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/TM;->A00:Ljava/lang/Integer;

    .line 65197
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/TM;->A01:Ljava/lang/Integer;

    .line 65198
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/TM;->A02:Ljava/lang/String;

    .line 65199
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 2

    .line 65200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65201
    if-nez p1, :cond_0

    .line 65202
    const/4 v0, 0x0

    new-array p1, v0, [Ljava/lang/String;

    .line 65203
    :cond_0
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/TM;->A03:Ljava/util/Set;

    .line 65204
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/TM;->A03:Ljava/util/Set;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 65205
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/TM;->A03:Ljava/util/Set;

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 65206
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/TM;->A00:Ljava/lang/Integer;

    .line 65207
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/TM;->A01:Ljava/lang/Integer;

    .line 65208
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/TM;->A01()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/TM;->A02:Ljava/lang/String;

    .line 65209
    return-void
.end method

.method public static A00(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/TM;
    .locals 8

    .line 65210
    if-nez p0, :cond_0

    .line 65211
    const/4 v0, 0x0

    return-object v0

    .line 65212
    :cond_0
    new-instance v4, Ljava/util/LinkedHashSet;

    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    .line 65213
    .local v0, "options":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 65214
    .local v1, "country":Ljava/lang/Integer;
    const/4 v6, 0x0

    .line 65215
    .local v2, "state":Ljava/lang/Integer;
    invoke-static {}, Lcom/facebook/ads/redexgen/X/TM;->A03()Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 65216
    .local v3, "matcher":Ljava/util/regex/Matcher;
    :cond_1
    :goto_0
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    sget-object v1, Lcom/facebook/ads/redexgen/X/TM;->A06:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x4

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/TM;->A06:[Ljava/lang/String;

    const-string v1, "sKn9BxXmA7RSSQCmWRu2pi7wmb7A"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-eqz v7, :cond_3

    .line 65217
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 65218
    const/4 v0, 0x2

    invoke-virtual {v3, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 65219
    .local v4, "countryString":Ljava/lang/String;
    const/4 v0, 0x3

    invoke-virtual {v3, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 65220
    .local v5, "stateString":Ljava/lang/String;
    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    .line 65221
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 65222
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_0

    .line 65223
    :cond_3
    new-instance v0, Lcom/facebook/ads/redexgen/X/TM;

    invoke-direct {v0, v4, v5, v6, p0}, Lcom/facebook/ads/redexgen/X/TM;-><init>(Ljava/util/Set;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V

    return-object v0
.end method

.method private A01()Ljava/lang/String;
    .locals 10

    .line 65224
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 65225
    .local v0, "identifierBuilder":Ljava/lang/StringBuilder;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TM;->A03:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 65226
    .local v2, "option":Ljava/lang/String;
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 65227
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TM;->A00:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TM;->A01:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 65228
    const/4 v2, 0x2

    const/16 v1, 0xa

    const/16 v0, 0x38

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/TM;->A02(III)Ljava/lang/String;

    move-result-object v8

    .line 65229
    :goto_1
    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/TM;->A00:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/TM;->A01:Ljava/lang/Integer;

    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object v4, v1, v0

    const/4 v0, 0x1

    aput-object v3, v1, v0

    const/4 v0, 0x2

    aput-object v2, v1, v0

    .line 65230
    invoke-static {v5, v8, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 65231
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65232
    .end local v2    # "option":Ljava/lang/String;
    goto :goto_0

    .line 65233
    :cond_0
    const/16 v4, 0xc

    const/4 v3, 0x4

    sget-object v2, Lcom/facebook/ads/redexgen/X/TM;->A06:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/TM;->A06:[Ljava/lang/String;

    const-string v1, "nnUUoBTpU2YPqXP8sfrJzmkBvRy05q"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "LOR0jcP8uyvbiYDNETVTqINk0FH7KZ"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const/16 v0, 0x73

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/TM;->A02(III)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 65234
    :cond_2
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static A02(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/TM;->A05:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x3d

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A03()Ljava/util/regex/Pattern;
    .locals 4

    .line 65235
    sget-object v3, Lcom/facebook/ads/redexgen/X/TM;->A04:Ljava/util/regex/Pattern;

    sget-object v2, Lcom/facebook/ads/redexgen/X/TM;->A06:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/TM;->A06:[Ljava/lang/String;

    const-string v1, "PeUiXyVqTpDx"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-nez v3, :cond_0

    .line 65236
    const/16 v2, 0x10

    const/16 v1, 0x1d

    const/16 v0, 0x5b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/TM;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/TM;->A04:Ljava/util/regex/Pattern;

    .line 65237
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/TM;->A04:Ljava/util/regex/Pattern;

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A04()V
    .locals 3

    const/16 v0, 0x2e

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/TM;->A05:[B

    sget-object v1, Lcom/facebook/ads/redexgen/X/TM;->A06:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/4 v0, 0x7

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x74

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/TM;->A06:[Ljava/lang/String;

    const-string v1, "QwSmp19ijd8ERy9gz24h9M2"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "mhynLWVjgi3uuGun3"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    return-void

    :array_0
    .array-data 1
        -0x1bt
        -0x46t
        -0x30t
        -0x66t
        -0x18t
        -0x5et
        -0x66t
        -0x27t
        -0x5et
        -0x66t
        -0x27t
        -0x2et
        0xbt
        -0x2bt
        0x23t
        0xdt
        -0xct
        -0xdt
        -0x40t
        -0xdt
        -0xat
        -0x3bt
        -0xct
        -0xbt
        -0xbt
        -0x3dt
        -0x3ft
        -0x40t
        -0x29t
        -0x2et
        -0x3bt
        -0x40t
        -0xct
        -0x4t
        -0x3dt
        -0x3ft
        -0x3bt
        -0x40t
        -0xct
        -0x4t
        -0x3dt
        -0x3ft
        -0x3ft
        -0x29t
        -0xbt
        -0x49t
    .end array-data
.end method


# virtual methods
.method public final A05()Ljava/lang/Integer;
    .locals 1

    .line 65238
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TM;->A00:Ljava/lang/Integer;

    return-object v0
.end method

.method public final A06()Ljava/lang/Integer;
    .locals 1

    .line 65239
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TM;->A01:Ljava/lang/Integer;

    return-object v0
.end method

.method public final A07()Ljava/lang/String;
    .locals 1

    .line 65240
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TM;->A02:Ljava/lang/String;

    return-object v0
.end method

.method public final A08()Ljava/lang/String;
    .locals 5

    .line 65241
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TM;->A03:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 65242
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x1

    const/4 v1, 0x1

    const/16 v0, 0x22

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/TM;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 65243
    .local v1, "sb":Ljava/lang/StringBuilder;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 65244
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65245
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65246
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v0, 0x7c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/TM;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 65247
    :cond_1
    const/16 v2, 0x2d

    const/4 v1, 0x1

    const/16 v0, 0x1d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/TM;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65248
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 65249
    instance-of v0, p1, Lcom/facebook/ads/redexgen/X/TM;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 65250
    return v2

    .line 65251
    :cond_0
    check-cast p1, Lcom/facebook/ads/redexgen/X/TM;

    .line 65252
    .local v0, "other":Lcom/facebook/ads/redexgen/X/TM;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/TM;->A00:Ljava/lang/Integer;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/TM;->A00:Ljava/lang/Integer;

    if-eq v1, v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TM;->A00:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/TM;->A00:Ljava/lang/Integer;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/TM;->A00:Ljava/lang/Integer;

    invoke-virtual {v1, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/TM;->A01:Ljava/lang/Integer;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/TM;->A01:Ljava/lang/Integer;

    if-eq v1, v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TM;->A01:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/TM;->A01:Ljava/lang/Integer;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/TM;->A01:Ljava/lang/Integer;

    .line 65253
    invoke-virtual {v1, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/TM;->A03:Ljava/util/Set;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/TM;->A03:Ljava/util/Set;

    .line 65254
    invoke-interface {v1, v0}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v2, 0x1

    .line 65255
    :cond_3
    return v2
.end method

.method public final hashCode()I
    .locals 3

    .line 65256
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TM;->A03:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->hashCode()I

    move-result v0

    mul-int/lit16 v2, v0, 0x83

    .line 65257
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TM;->A00:Ljava/lang/Integer;

    const/4 v1, -0x1

    if-nez v0, :cond_1

    const/4 v0, -0x1

    :goto_0
    mul-int/lit16 v0, v0, 0x89

    add-int/2addr v2, v0

    .line 65258
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TM;->A01:Ljava/lang/Integer;

    if-nez v0, :cond_0

    :goto_1
    mul-int/lit16 v0, v1, 0x8b

    add-int/2addr v2, v0

    .line 65259
    return v2

    .line 65260
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TM;->A01:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_1

    .line 65261
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TM;->A00:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method
