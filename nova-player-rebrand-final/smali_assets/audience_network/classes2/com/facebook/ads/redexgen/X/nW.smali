.class public final Lcom/facebook/ads/redexgen/X/nW;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/24;


# static fields
.field public static A03:[B

.field public static A04:[Ljava/lang/String;

.field public static final A05:Lcom/facebook/ads/redexgen/X/23;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/23<",
            "Lcom/facebook/ads/redexgen/X/nW;",
            ">;"
        }
    .end annotation
.end field

.field public static final A06:Lcom/facebook/ads/redexgen/X/nW;

.field public static final A07:Ljava/lang/String;


# instance fields
.field public A00:I

.field public final A01:I

.field public final A02:Lcom/facebook/ads/redexgen/X/BP;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/BP<",
            "Lcom/facebook/ads/redexgen/X/pg;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 3299
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "kjXOolT"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "y1uosoppcQ2KAnagmdUHUDs2pqKkNOP"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "9S5fCrLfVI6Z6wWSlA"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "LW4KLvv"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "ESAoxwChDjEBJ2YD38hEjiU5IsN"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "MD8cz6uZEkXt7x64XO0blzPRBkN5Dhm8"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "wv8vTraLOdvtLK52tGc0aCYgNtDO0cFF"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "ftZS2reRIxcEfCn6parOlN78mV3R9Y2K"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/nW;->A04:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/nW;->A03()V

    const/4 v2, 0x0

    new-array v1, v2, [Lcom/facebook/ads/redexgen/X/pg;

    new-instance v0, Lcom/facebook/ads/redexgen/X/nW;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/nW;-><init>([Lcom/facebook/ads/redexgen/X/pg;)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/nW;->A06:Lcom/facebook/ads/redexgen/X/nW;

    .line 3300
    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/5C;->A0h(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/nW;->A07:Ljava/lang/String;

    .line 3301
    new-instance v0, Lcom/facebook/ads/redexgen/X/nX;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/nX;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/nW;->A05:Lcom/facebook/ads/redexgen/X/23;

    return-void
.end method

.method public varargs constructor <init>([Lcom/facebook/ads/redexgen/X/pg;)V
    .locals 1

    .line 100706
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100707
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/BP;->A07([Ljava/lang/Object;)Lcom/facebook/ads/redexgen/X/BP;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/nW;->A02:Lcom/facebook/ads/redexgen/X/BP;

    .line 100708
    array-length v0, p1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/nW;->A01:I

    .line 100709
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/nW;->A02()V

    .line 100710
    return-void
.end method

.method public static synthetic A00(Landroid/os/Bundle;)Lcom/facebook/ads/redexgen/X/nW;
    .locals 2

    .line 100711
    sget-object v0, Lcom/facebook/ads/redexgen/X/nW;->A07:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 100712
    .local v0, "trackGroupBundles":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    const/4 p0, 0x0

    if-nez v1, :cond_0

    .line 100713
    new-array v1, p0, [Lcom/facebook/ads/redexgen/X/pg;

    new-instance v0, Lcom/facebook/ads/redexgen/X/nW;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/nW;-><init>([Lcom/facebook/ads/redexgen/X/pg;)V

    return-object v0

    .line 100714
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/pg;->A06:Lcom/facebook/ads/redexgen/X/23;

    .line 100715
    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/44;->A01(Lcom/facebook/ads/redexgen/X/23;Ljava/util/List;)Lcom/facebook/ads/redexgen/X/BP;

    move-result-object v1

    new-array v0, p0, [Lcom/facebook/ads/redexgen/X/pg;

    .line 100716
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/oO;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/facebook/ads/redexgen/X/pg;

    new-instance v0, Lcom/facebook/ads/redexgen/X/nW;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/nW;-><init>([Lcom/facebook/ads/redexgen/X/pg;)V

    .line 100717
    return-object v0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/nW;->A03:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x5f

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A02()V
    .locals 7

    .line 100718
    const/4 v6, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nW;->A02:Lcom/facebook/ads/redexgen/X/BP;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/BP;->size()I

    move-result v0

    if-ge v6, v0, :cond_2

    .line 100719
    add-int/lit8 v5, v6, 0x1

    .local v1, "j":I
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nW;->A02:Lcom/facebook/ads/redexgen/X/BP;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/BP;->size()I

    move-result v0

    if-ge v5, v0, :cond_1

    .line 100720
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nW;->A02:Lcom/facebook/ads/redexgen/X/BP;

    invoke-virtual {v0, v6}, Lcom/facebook/ads/redexgen/X/BP;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/pg;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nW;->A02:Lcom/facebook/ads/redexgen/X/BP;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/BP;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/pg;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100721
    const/4 v2, 0x0

    const/16 v1, 0x3c

    const/16 v0, 0x65

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/nW;->A01(III)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x3c

    const/16 v1, 0xf

    const/16 v0, 0x5a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/nW;->A01(III)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x73

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/nW;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v4}, Lcom/facebook/ads/redexgen/X/4g;->A08(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 100722
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 100723
    .end local v1    # "j":I
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 100724
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method public static A03()V
    .locals 4

    const/16 v0, 0x4b

    new-array v3, v0, [B

    sget-object v1, Lcom/facebook/ads/redexgen/X/nW;->A04:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/16 v0, 0x1f

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x51

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/nW;->A04:[Ljava/lang/String;

    const-string v1, "LoVxB454"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    fill-array-data v3, :array_0

    sput-object v3, Lcom/facebook/ads/redexgen/X/nW;->A03:[B

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :array_0
    .array-data 1
        0x77t
        0x4ft
        0x56t
        0x4et
        0x53t
        0x4at
        0x56t
        0x5ft
        0x1at
        0x53t
        0x5et
        0x5ft
        0x54t
        0x4et
        0x53t
        0x59t
        0x5bt
        0x56t
        0x1at
        0x6et
        0x48t
        0x5bt
        0x59t
        0x51t
        0x7dt
        0x48t
        0x55t
        0x4ft
        0x4at
        0x49t
        0x1at
        0x5bt
        0x5et
        0x5et
        0x5ft
        0x5et
        0x1at
        0x4et
        0x55t
        0x1at
        0x55t
        0x54t
        0x5ft
        0x1at
        0x6et
        0x48t
        0x5bt
        0x59t
        0x51t
        0x7dt
        0x48t
        0x55t
        0x4ft
        0x4at
        0x7bt
        0x48t
        0x48t
        0x5bt
        0x43t
        0x14t
        0x51t
        0x77t
        0x64t
        0x66t
        0x6et
        0x42t
        0x77t
        0x6at
        0x70t
        0x75t
        0x44t
        0x77t
        0x77t
        0x64t
        0x7ct
    .end array-data
.end method


# virtual methods
.method public final A04(Lcom/facebook/ads/redexgen/X/pg;)I
    .locals 1

    .line 100725
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nW;->A02:Lcom/facebook/ads/redexgen/X/BP;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/BP;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 100726
    .local v0, "index":I
    if-ltz v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public final A05(I)Lcom/facebook/ads/redexgen/X/pg;
    .locals 1

    .line 100727
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nW;->A02:Lcom/facebook/ads/redexgen/X/BP;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/BP;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/pg;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 100728
    const/4 v3, 0x1

    if-ne p0, p1, :cond_0

    .line 100729
    return v3

    .line 100730
    :cond_0
    const/4 v2, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-eq v1, v0, :cond_2

    .line 100731
    .end local v2
    :cond_1
    return v2

    .line 100732
    :cond_2
    check-cast p1, Lcom/facebook/ads/redexgen/X/nW;

    .line 100733
    .local v2, "other":Lcom/facebook/ads/redexgen/X/nW;
    iget v1, p0, Lcom/facebook/ads/redexgen/X/nW;->A01:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/nW;->A01:I

    if-ne v1, v0, :cond_3

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/nW;->A02:Lcom/facebook/ads/redexgen/X/BP;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/nW;->A02:Lcom/facebook/ads/redexgen/X/BP;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/BP;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_0
    return v3

    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 4

    .line 100734
    iget v0, p0, Lcom/facebook/ads/redexgen/X/nW;->A00:I

    if-nez v0, :cond_0

    .line 100735
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nW;->A02:Lcom/facebook/ads/redexgen/X/BP;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/BP;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/nW;->A00:I

    .line 100736
    :cond_0
    iget v3, p0, Lcom/facebook/ads/redexgen/X/nW;->A00:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/nW;->A04:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/nW;->A04:[Ljava/lang/String;

    const-string v1, "ifk0Ba0Zppjn7MlaJBrmzFqZbJ0HKklT"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    return v3
.end method
