.class public final Lcom/facebook/ads/redexgen/X/dC;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/dB;,
        Lcom/facebook/ads/redexgen/X/dA;,
        Lcom/facebook/ads/redexgen/X/It;,
        Lcom/facebook/ads/redexgen/X/d9;,
        Lcom/facebook/ads/redexgen/X/d7;,
        Lcom/facebook/ads/redexgen/X/d8;,
        Lcom/facebook/ads/internal/view/dynamiclayout/DynamicWebViewController$AdFormatType;
    }
.end annotation


# static fields
.field public static A0K:[B

.field public static A0L:[Ljava/lang/String;

.field public static final A0M:Ljava/util/concurrent/atomic/AtomicInteger;

.field public static final A0N:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field public A00:J

.field public A01:Lcom/facebook/ads/redexgen/X/Y2;

.field public A02:Lcom/facebook/ads/redexgen/X/d1;

.field public A03:Lcom/facebook/ads/redexgen/X/dA;

.field public A04:Lcom/facebook/ads/redexgen/X/dB;

.field public A05:Lcom/facebook/ads/redexgen/X/fp;

.field public A06:Z

.field public A07:Z

.field public final A08:I

.field public final A09:Lcom/facebook/ads/redexgen/X/jd;

.field public final A0A:Lcom/facebook/ads/redexgen/X/Sx;

.field public final A0B:Lcom/facebook/ads/redexgen/X/gi;

.field public final A0C:Lcom/facebook/ads/redexgen/X/VA;

.field public final A0D:Lcom/facebook/ads/redexgen/X/VI;

.field public final A0E:Lcom/facebook/ads/redexgen/X/cz;

.field public final A0F:Lcom/facebook/ads/redexgen/X/It;

.field public final A0G:Lcom/facebook/ads/redexgen/X/dJ;

.field public final A0H:Lcom/facebook/ads/redexgen/X/dK;

.field public final A0I:Ljava/lang/String;

.field public final A0J:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/facebook/ads/redexgen/X/d9;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 2683
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "QJ7W4e4PJvclr77cDyA2o1qIxMihX3tE"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "RH0qaB2vXSlWTV"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "TMgHIdn8e0jRrsJAq9rOuGvMgMhVzLRj"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "8zeB"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "h3DHJTryp4843oQXq4V40YlaMfy8fMY9"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "5EUDcWbBtTwBMpPZObVlQHA1Luk9oa"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "lBOFkjXt9ejA3EivMitoOA5tI6ifJJ8U"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "jkkICjKEbDq5EoZUmm0oqZxt7dyZ5DGY"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/dC;->A0L:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/dC;->A0D()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/dC;->A0N:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2684
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/dC;->A0M:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/jd;Lcom/facebook/ads/redexgen/X/VA;I)V
    .locals 10

    .line 79658
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79659
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/dC;->A0J:Ljava/util/LinkedList;

    .line 79660
    new-instance v0, Lcom/facebook/ads/redexgen/X/Y2;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Y2;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/dC;->A01:Lcom/facebook/ads/redexgen/X/Y2;

    .line 79661
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/dC;->A07:Z

    .line 79662
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/dC;->A06:Z

    .line 79663
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/dC;->A00:J

    .line 79664
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/dC;->A0B:Lcom/facebook/ads/redexgen/X/gi;

    .line 79665
    move-object v3, p3

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/dC;->A0C:Lcom/facebook/ads/redexgen/X/VA;

    .line 79666
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/dC;->A09:Lcom/facebook/ads/redexgen/X/jd;

    .line 79667
    iput p4, p0, Lcom/facebook/ads/redexgen/X/dC;->A08:I

    .line 79668
    new-instance v0, Lcom/facebook/ads/redexgen/X/It;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/It;-><init>(Lcom/facebook/ads/redexgen/X/dC;Lcom/facebook/ads/redexgen/X/gi;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/dC;->A0F:Lcom/facebook/ads/redexgen/X/It;

    .line 79669
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/dC;->A0B:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Sx;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Sx;-><init>(Lcom/facebook/ads/redexgen/X/T8;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/dC;->A0A:Lcom/facebook/ads/redexgen/X/Sx;

    .line 79670
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/jd;->A2E()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/VI;

    invoke-direct {v0, v1, v3}, Lcom/facebook/ads/redexgen/X/VI;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/VA;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/dC;->A0D:Lcom/facebook/ads/redexgen/X/VI;

    .line 79671
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/NQ;->A1D()Ljava/lang/String;

    move-result-object v2

    .line 79672
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/jd;->A29()Lcom/facebook/ads/redexgen/X/NR;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NR;->A0H()Lcom/facebook/ads/redexgen/X/NU;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NU;->A09()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/cz;

    invoke-direct {v0, v2, v1, p4}, Lcom/facebook/ads/redexgen/X/cz;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/dC;->A0E:Lcom/facebook/ads/redexgen/X/cz;

    .line 79673
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/dC;->A0I:Ljava/lang/String;

    .line 79674
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/dC;->A0B:Lcom/facebook/ads/redexgen/X/gi;

    .line 79675
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/NQ;->A1H()Lorg/json/JSONObject;

    move-result-object v5

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/dC;->A0A:Lcom/facebook/ads/redexgen/X/Sx;

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/dC;->A0D:Lcom/facebook/ads/redexgen/X/VI;

    iget-object v8, p0, Lcom/facebook/ads/redexgen/X/dC;->A0E:Lcom/facebook/ads/redexgen/X/cz;

    .line 79676
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/dC;->A0H()Z

    move-result v9

    .line 79677
    invoke-static/range {v4 .. v9}, Lcom/facebook/ads/redexgen/X/dL;->A00(Lcom/facebook/ads/redexgen/X/gi;Lorg/json/JSONObject;Lcom/facebook/ads/redexgen/X/Sx;Lcom/facebook/ads/redexgen/X/VI;Lcom/facebook/ads/redexgen/X/cz;Z)Lcom/facebook/ads/redexgen/X/dK;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/dC;->A0H:Lcom/facebook/ads/redexgen/X/dK;

    .line 79678
    new-instance v0, Lcom/facebook/ads/redexgen/X/dJ;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/dC;->A0B:Lcom/facebook/ads/redexgen/X/gi;

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/dC;->A0E:Lcom/facebook/ads/redexgen/X/cz;

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/dC;->A0I:Ljava/lang/String;

    .line 79679
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/jd;->A2E()Ljava/lang/String;

    move-result-object v6

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/dJ;-><init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/dC;Lcom/facebook/ads/redexgen/X/VA;Lcom/facebook/ads/redexgen/X/cz;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/dC;->A0G:Lcom/facebook/ads/redexgen/X/dJ;

    .line 79680
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/dC;)J
    .locals 1

    .line 79681
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/dC;->A00:J

    return-wide v0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/dC;)Lcom/facebook/ads/redexgen/X/jd;
    .locals 0

    .line 79682
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/dC;->A09:Lcom/facebook/ads/redexgen/X/jd;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/dC;)Lcom/facebook/ads/redexgen/X/Sx;
    .locals 0

    .line 79683
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/dC;->A0A:Lcom/facebook/ads/redexgen/X/Sx;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/dC;)Lcom/facebook/ads/redexgen/X/gi;
    .locals 0

    .line 79684
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/dC;->A0B:Lcom/facebook/ads/redexgen/X/gi;

    return-object p0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/dC;)Lcom/facebook/ads/redexgen/X/VI;
    .locals 0

    .line 79685
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/dC;->A0D:Lcom/facebook/ads/redexgen/X/VI;

    return-object p0
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/dC;)Lcom/facebook/ads/redexgen/X/cz;
    .locals 0

    .line 79686
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/dC;->A0E:Lcom/facebook/ads/redexgen/X/cz;

    return-object p0
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/dC;)Lcom/facebook/ads/redexgen/X/d1;
    .locals 0

    .line 79687
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/dC;->A02:Lcom/facebook/ads/redexgen/X/d1;

    return-object p0
.end method

.method public static synthetic A07(Lcom/facebook/ads/redexgen/X/dC;)Lcom/facebook/ads/redexgen/X/dA;
    .locals 0

    .line 79688
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/dC;->A03:Lcom/facebook/ads/redexgen/X/dA;

    return-object p0
.end method

.method public static synthetic A08(Lcom/facebook/ads/redexgen/X/dC;)Lcom/facebook/ads/redexgen/X/dB;
    .locals 0

    .line 79689
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/dC;->A04:Lcom/facebook/ads/redexgen/X/dB;

    return-object p0
.end method

.method public static synthetic A09(Lcom/facebook/ads/redexgen/X/dC;)Lcom/facebook/ads/redexgen/X/dK;
    .locals 0

    .line 79690
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/dC;->A0H:Lcom/facebook/ads/redexgen/X/dK;

    return-object p0
.end method

.method public static A0A(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/dC;->A0K:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x38

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A0B()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .line 79691
    sget-object v0, Lcom/facebook/ads/redexgen/X/dC;->A0M:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method private A0C()V
    .locals 5

    .line 79692
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/dC;->A0I:Ljava/lang/String;

    const/4 v2, 0x1

    const/4 v1, 0x6

    const/16 v0, 0x43

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/dC;->A0A(III)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v3, v0}, [Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x120

    const/16 v1, 0x16

    const/4 v0, 0x4

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/dC;->A0A(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/d9;

    invoke-direct {v0, v1, v3}, Lcom/facebook/ads/redexgen/X/d9;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/dC;->A0F(Lcom/facebook/ads/redexgen/X/d9;)V

    .line 79693
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dC;->A0H:Lcom/facebook/ads/redexgen/X/dK;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/dK;->A04:Lorg/json/JSONObject;

    .line 79694
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 79695
    const/4 v0, 0x0

    invoke-static {v1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    .line 79696
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v0, 0x77

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/dC;->A0A(III)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x23

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/dC;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 79697
    .local v0, "assets":Ljava/lang/String;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dC;->A0I:Ljava/lang/String;

    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x136

    const/16 v1, 0x1a

    const/16 v0, 0x4c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/dC;->A0A(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/d9;

    invoke-direct {v0, v1, v3}, Lcom/facebook/ads/redexgen/X/d9;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/dC;->A0F(Lcom/facebook/ads/redexgen/X/d9;)V

    .line 79698
    return-void
.end method

.method public static A0D()V
    .locals 1

    const/16 v0, 0x1aa

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/dC;->A0K:[B

    return-void

    :array_0
    .array-data 1
        -0x47t
        -0x4ft
        -0x57t
        -0x53t
        -0x54t
        -0x57t
        -0x55t
        -0x43t
        -0x16t
        -0x20t
        -0x12t
        -0x15t
        -0x1bt
        -0x20t
        -0x3bt
        -0x16t
        -0x10t
        -0x1ft
        -0x12t
        -0x1et
        -0x23t
        -0x21t
        -0x1ft
        -0xct
        -0x9t
        -0x1bt
        -0x8t
        0x3t
        0x2t
        0x5t
        0x7t
        -0x4t
        0x1t
        -0x6t
        -0x27t
        -0x4t
        0x1t
        -0x4t
        0x6t
        -0x5t
        -0x8t
        -0x9t
        -0x45t
        -0x46t
        -0x48t
        0x6t
        -0x46t
        -0x44t
        -0x32t
        -0x25t
        -0x22t
        -0x34t
        -0x21t
        -0x16t
        -0x17t
        -0x14t
        -0x12t
        -0x1dt
        -0x18t
        -0x1ft
        -0x33t
        -0x12t
        -0x25t
        -0x14t
        -0x12t
        -0x21t
        -0x22t
        -0x5et
        -0x5ft
        -0x61t
        -0x13t
        -0x5ft
        -0x5dt
        -0x4bt
        -0x67t
        -0x54t
        -0x54t
        -0x67t
        -0x65t
        -0x60t
        -0x63t
        -0x64t
        -0x71t
        -0x72t
        -0x7at
        -0x53t
        -0x5bt
        -0x10t
        -0x11t
        0x2t
        -0xft
        -0xat
        -0xdt
        -0xet
        -0x2ct
        0x0t
        -0x11t
        -0x5t
        -0xdt
        -0x2et
        -0x11t
        0x2t
        -0x11t
        0x6t
        0x18t
        0x15t
        0x15t
        0x8t
        0x11t
        0x17t
        -0x6t
        -0x7t
        -0xft
        0x18t
        0x10t
        0x1ct
        0x28t
        0x17t
        0x23t
        0x1bt
        0x29t
        -0x34t
        -0x35t
        -0x62t
        -0x40t
        -0x2ft
        -0x3at
        -0x2dt
        -0x3at
        -0x2ft
        -0x2at
        -0x53t
        -0x42t
        -0x2et
        -0x30t
        -0x3et
        -0x3ft
        -0x7bt
        -0x7ct
        -0x7et
        -0x30t
        -0x7ct
        -0x7at
        -0x68t
        -0x1dt
        -0x1et
        -0x4bt
        -0x29t
        -0x18t
        -0x23t
        -0x16t
        -0x23t
        -0x18t
        -0x13t
        -0x3at
        -0x27t
        -0x19t
        -0x17t
        -0x1ft
        -0x27t
        -0x28t
        -0x64t
        -0x65t
        -0x67t
        -0x19t
        -0x65t
        -0x63t
        -0x51t
        0x14t
        0x13t
        -0x18t
        0x11t
        0x14t
        0x18t
        0xat
        -0x15t
        0x1at
        0x11t
        0x11t
        0x18t
        0x8t
        0x17t
        0xat
        0xat
        0x13t
        -0x5t
        0xet
        0xat
        0x1ct
        -0x33t
        -0x34t
        -0x36t
        0x18t
        -0x34t
        -0x32t
        -0x53t
        -0x54t
        -0x7ct
        -0x4dt
        -0x56t
        -0x56t
        -0x4ft
        -0x5ft
        -0x50t
        -0x5dt
        -0x5dt
        -0x54t
        -0x6ct
        -0x59t
        -0x5dt
        -0x4bt
        0x66t
        0x65t
        0x63t
        -0x4ft
        0x65t
        0x67t
        -0x52t
        -0x53t
        -0x6bt
        -0x60t
        -0x55t
        -0x4ct
        -0x5ct
        -0x6ft
        -0x5ct
        -0x60t
        -0x5dt
        0x67t
        0x66t
        0x64t
        -0x4et
        0x66t
        0x6bt
        0x5ft
        0x66t
        0x64t
        -0x4et
        0x66t
        0x6bt
        0x5ft
        0x66t
        0x64t
        -0x4et
        0x66t
        0x68t
        0x7at
        0x1ct
        0x1bt
        0x3t
        0xet
        0x19t
        0x22t
        0x12t
        0x4t
        0x1ft
        0x16t
        0x21t
        0x21t
        0x12t
        0x1bt
        -0x2bt
        -0x2ct
        -0x2et
        0x20t
        -0x2ct
        -0x27t
        -0x33t
        -0x2ct
        -0x2et
        0x20t
        -0x2ct
        -0x2at
        -0x18t
        -0x47t
        -0x55t
        -0x57t
        -0x4bt
        -0x4ct
        -0x56t
        -0x5bt
        -0x57t
        -0x52t
        -0x59t
        -0x4ct
        -0x4ct
        -0x55t
        -0x4et
        -0x51t
        -0x5ft
        -0x50t
        0x7dt
        -0x4ft
        -0x50t
        -0x5ct
        -0x79t
        -0x5ft
        -0x4bt
        0x64t
        0x63t
        0x61t
        -0x51t
        0x63t
        0x68t
        0x63t
        0x61t
        -0x51t
        0x63t
        0x65t
        0x77t
        -0x9t
        -0x17t
        -0x8t
        -0x3at
        -0x1bt
        -0x9t
        -0x17t
        -0x46t
        -0x48t
        -0x3bt
        -0x9t
        -0x9t
        -0x17t
        -0x8t
        -0x9t
        -0x54t
        -0x55t
        -0x57t
        -0x9t
        -0x55t
        -0x50t
        -0x55t
        -0x57t
        -0x9t
        -0x55t
        -0x53t
        -0x1ft
        -0x2dt
        -0x1et
        -0x50t
        -0x31t
        -0x1ft
        -0x2dt
        -0x5ct
        -0x5et
        -0x4ft
        -0x23t
        -0x24t
        -0x2ct
        -0x29t
        -0x2bt
        -0x6at
        -0x6bt
        -0x6dt
        -0x1ft
        -0x6bt
        -0x66t
        -0x6bt
        -0x6dt
        -0x1ft
        -0x6bt
        -0x69t
        -0x4dt
        -0x52t
        -0x4dt
        -0x60t
        -0x55t
        -0x6at
        -0x6bt
        -0x73t
        -0x4ct
        -0x54t
        -0x3at
        -0x3dt
        -0x43t
        -0x22t
        -0x2ft
        -0x34t
        -0x33t
        -0x29t
        -0x53t
        -0x22t
        -0x33t
        -0x2at
        -0x24t
        -0x70t
        -0x71t
        -0x73t
        -0x25t
        -0x71t
        -0x6ct
        -0x78t
        -0x71t
        -0x73t
        -0x25t
        -0x71t
        -0x6ct
        -0x78t
        -0x71t
        -0x73t
        -0x25t
        -0x71t
        -0x6ft
        -0x5dt
        -0x4et
        -0x5bt
        -0x5ft
        -0x4dt
        -0x72t
        -0x5ft
        -0x63t
        -0x60t
        -0x4bt
        -0x70t
        -0x55t
        -0x71t
        -0x5ct
        -0x55t
        -0x4dt
        0x64t
        0x63t
        0x61t
        -0x51t
        0x63t
        0x65t
        0x77t
    .end array-data
.end method

.method private declared-synchronized A0E()V
    .locals 5

    monitor-enter p0

    .line 79699
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/dC;->A06:Z

    if-eqz v0, :cond_1

    .line 79700
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dC;->A0J:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 79701
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dC;->A0J:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/ads/redexgen/X/d9;

    .line 79702
    .local v0, "call":Lcom/facebook/ads/redexgen/X/d9;
    if-eqz v4, :cond_0

    .line 79703
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/dC;->A0F:Lcom/facebook/ads/redexgen/X/It;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/d9;->A00:Ljava/lang/String;

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/d9;->A02:[Ljava/lang/String;

    check-cast v0, [Ljava/lang/Object;

    .line 79704
    invoke-static {v2, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 79705
    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/ay;->A0I(Ljava/lang/String;)V

    .line 79706
    iget-boolean v0, v4, Lcom/facebook/ads/redexgen/X/d9;->A01:Z

    if-eqz v0, :cond_0

    .line 79707
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/dC;->A0D:Lcom/facebook/ads/redexgen/X/VI;

    sget-object v1, Lcom/facebook/ads/redexgen/X/VH;->A0L:Lcom/facebook/ads/redexgen/X/VH;

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VI;->A04(Lcom/facebook/ads/redexgen/X/VH;Ljava/util/Map;)V

    .line 79708
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dC;->A0B:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v1

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/d9;->A00:Ljava/lang/String;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Lt;->A65(Ljava/lang/String;)V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79709
    :cond_1
    monitor-exit p0

    return-void

    .line 79710
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized A0F(Lcom/facebook/ads/redexgen/X/d9;)V
    .locals 1

    monitor-enter p0

    .line 79711
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dC;->A0J:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 79712
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/dC;->A0E()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79713
    monitor-exit p0

    return-void

    .line 79714
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/dC;
    .end local p1    # null:Lcom/facebook/ads/redexgen/X/d9;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static synthetic A0G(Lcom/facebook/ads/redexgen/X/dC;)V
    .locals 0

    .line 79715
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/dC;->A0E()V

    return-void
.end method

.method private A0H()Z
    .locals 1

    .line 79716
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/dC;->A0I()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private A0I()Z
    .locals 2

    .line 79717
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/dC;->A0B:Lcom/facebook/ads/redexgen/X/gi;

    .line 79718
    invoke-static {}, Lcom/facebook/ads/redexgen/X/fX;->A03()Z

    move-result v0

    .line 79719
    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Up;->A30(Landroid/content/Context;Z)Z

    move-result v0

    return v0
.end method

.method public static synthetic A0J(Lcom/facebook/ads/redexgen/X/dC;Z)Z
    .locals 0

    .line 79720
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/dC;->A06:Z

    return p1
.end method


# virtual methods
.method public final A0K()Lcom/facebook/ads/redexgen/X/VI;
    .locals 1

    .line 79721
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dC;->A0D:Lcom/facebook/ads/redexgen/X/VI;

    return-object v0
.end method

.method public final A0L()Lcom/facebook/ads/redexgen/X/Y2;
    .locals 1

    .line 79722
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dC;->A01:Lcom/facebook/ads/redexgen/X/Y2;

    return-object v0
.end method

.method public final A0M()Lcom/facebook/ads/redexgen/X/cz;
    .locals 1

    .line 79723
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dC;->A0E:Lcom/facebook/ads/redexgen/X/cz;

    return-object v0
.end method

.method public final A0N()Lcom/facebook/ads/redexgen/X/d1;
    .locals 1

    .line 79724
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dC;->A02:Lcom/facebook/ads/redexgen/X/d1;

    return-object v0
.end method

.method public final A0O()Lcom/facebook/ads/redexgen/X/It;
    .locals 1

    .line 79725
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dC;->A0F:Lcom/facebook/ads/redexgen/X/It;

    return-object v0
.end method

.method public final A0P()V
    .locals 4

    .line 79726
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dC;->A0I:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x17

    const/16 v1, 0x1a

    const/16 v0, 0x5b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/dC;->A0A(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/d9;

    invoke-direct {v0, v1, v3}, Lcom/facebook/ads/redexgen/X/d9;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/dC;->A0F(Lcom/facebook/ads/redexgen/X/d9;)V

    .line 79727
    return-void
.end method

.method public final A0Q()V
    .locals 4

    .line 79728
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dC;->A0I:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x31

    const/16 v1, 0x19

    const/16 v0, 0x42

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/dC;->A0A(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/d9;

    invoke-direct {v0, v1, v3}, Lcom/facebook/ads/redexgen/X/d9;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/dC;->A0F(Lcom/facebook/ads/redexgen/X/d9;)V

    .line 79729
    return-void
.end method

.method public final A0R()V
    .locals 1

    .line 79730
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/dC;->A07:Z

    .line 79731
    return-void
.end method

.method public final A0S()V
    .locals 1

    .line 79732
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/dC;->A07:Z

    .line 79733
    return-void
.end method

.method public final A0T()V
    .locals 4

    .line 79734
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dC;->A0I:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x79

    const/16 v1, 0x17

    const/16 v0, 0x25

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/dC;->A0A(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/d9;

    invoke-direct {v0, v1, v3}, Lcom/facebook/ads/redexgen/X/d9;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/dC;->A0F(Lcom/facebook/ads/redexgen/X/d9;)V

    .line 79735
    return-void
.end method

.method public final A0U()V
    .locals 4

    .line 79736
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dC;->A0I:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0xa8

    const/16 v1, 0x1b

    const/16 v0, 0x6d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/dC;->A0A(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/d9;

    invoke-direct {v0, v1, v3}, Lcom/facebook/ads/redexgen/X/d9;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/dC;->A0F(Lcom/facebook/ads/redexgen/X/d9;)V

    .line 79737
    return-void
.end method

.method public final A0V()V
    .locals 4

    .line 79738
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dC;->A0I:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0xc3

    const/16 v1, 0x16

    const/4 v0, 0x6

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/dC;->A0A(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/d9;

    invoke-direct {v0, v1, v3}, Lcom/facebook/ads/redexgen/X/d9;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/dC;->A0F(Lcom/facebook/ads/redexgen/X/d9;)V

    .line 79739
    return-void
.end method

.method public final A0W()V
    .locals 4

    .line 79740
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dC;->A0I:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x194

    const/16 v1, 0x16

    const/4 v0, 0x4

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/dC;->A0A(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/d9;

    invoke-direct {v0, v1, v3}, Lcom/facebook/ads/redexgen/X/d9;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/dC;->A0F(Lcom/facebook/ads/redexgen/X/d9;)V

    .line 79741
    return-void
.end method

.method public final A0X()V
    .locals 5

    .line 79742
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/dC;->A0F:Lcom/facebook/ads/redexgen/X/It;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/dC;->A0G:Lcom/facebook/ads/redexgen/X/dJ;

    const/4 v2, 0x7

    const/16 v1, 0x10

    const/16 v0, 0x44

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/dC;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/It;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79743
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/dC;->A0D:Lcom/facebook/ads/redexgen/X/VI;

    sget-object v1, Lcom/facebook/ads/redexgen/X/VH;->A0O:Lcom/facebook/ads/redexgen/X/VH;

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VI;->A04(Lcom/facebook/ads/redexgen/X/VH;Ljava/util/Map;)V

    .line 79744
    .local v0, "url":Ljava/lang/String;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dC;->A0H:Lcom/facebook/ads/redexgen/X/dK;

    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/dK;->A00:Ljava/lang/String;

    .line 79745
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dC;->A0F:Lcom/facebook/ads/redexgen/X/It;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/It;->loadUrl(Ljava/lang/String;)V

    .line 79746
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/dC;->A00:J

    .line 79747
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 79748
    .local v1, "funnelJSON":Lorg/json/JSONObject;
    :try_start_0
    const/16 v2, 0x174

    const/4 v1, 0x3

    const/16 v0, 0x19

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/dC;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 79749
    const/16 v2, 0x67

    const/16 v1, 0xc

    const/16 v0, 0x6b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/dC;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/dD;->A00()I

    move-result v1

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 79750
    const/16 v2, 0x16a

    const/16 v1, 0xa

    const/4 v0, 0x7

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/dC;->A0A(III)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/dC;->A0N:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 79751
    const/16 v2, 0x4a

    const/16 v1, 0xd

    const/4 v0, 0x0

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/dC;->A0A(III)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/dC;->A0M:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79752
    :catch_0
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 79753
    .local v2, "funnelMessage":Ljava/lang/String;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dC;->A0B:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/Lt;->A6B(Ljava/lang/String;)V

    .line 79754
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/dC;->A0C()V

    .line 79755
    return-void
.end method

.method public final A0Y()V
    .locals 4

    .line 79756
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dC;->A0I:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x90

    const/16 v1, 0x18

    const/16 v0, 0x3c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/dC;->A0A(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/d9;

    invoke-direct {v0, v1, v3}, Lcom/facebook/ads/redexgen/X/d9;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/dC;->A0F(Lcom/facebook/ads/redexgen/X/d9;)V

    .line 79757
    return-void
.end method

.method public final A0Z(Lcom/facebook/ads/redexgen/X/Y2;)V
    .locals 0

    .line 79758
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/dC;->A01:Lcom/facebook/ads/redexgen/X/Y2;

    .line 79759
    return-void
.end method

.method public final A0a(Lcom/facebook/ads/redexgen/X/d1;)V
    .locals 0

    .line 79760
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/dC;->A02:Lcom/facebook/ads/redexgen/X/d1;

    .line 79761
    return-void
.end method

.method public final A0b(Lcom/facebook/ads/redexgen/X/dA;)V
    .locals 0

    .line 79762
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/dC;->A03:Lcom/facebook/ads/redexgen/X/dA;

    .line 79763
    return-void
.end method

.method public final A0c(Lcom/facebook/ads/redexgen/X/dB;)V
    .locals 0

    .line 79764
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/dC;->A04:Lcom/facebook/ads/redexgen/X/dB;

    .line 79765
    return-void
.end method

.method public final A0d(Lcom/facebook/ads/redexgen/X/Is;)V
    .locals 1

    .line 79766
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dC;->A0G:Lcom/facebook/ads/redexgen/X/dJ;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/dJ;->A0N(Lcom/facebook/ads/redexgen/X/Is;)V

    .line 79767
    return-void
.end method

.method public final A0e(Lcom/facebook/ads/redexgen/X/fp;)V
    .locals 0

    .line 79768
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/dC;->A05:Lcom/facebook/ads/redexgen/X/fp;

    .line 79769
    return-void
.end method

.method public final A0f(Ljava/lang/String;)V
    .locals 4

    .line 79770
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dC;->A0I:Ljava/lang/String;

    filled-new-array {v0, p1}, [Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0xf7

    const/16 v1, 0x1b

    const/16 v0, 0x75

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/dC;->A0A(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/d9;

    invoke-direct {v0, v1, v3}, Lcom/facebook/ads/redexgen/X/d9;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/dC;->A0F(Lcom/facebook/ads/redexgen/X/d9;)V

    .line 79771
    return-void
.end method

.method public final A0g(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 79772
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dC;->A0I:Ljava/lang/String;

    filled-new-array {v0, p1, p2}, [Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0xd9

    const/16 v1, 0x1e

    const/4 v0, 0x7

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/dC;->A0A(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/d9;

    invoke-direct {v0, v1, v3}, Lcom/facebook/ads/redexgen/X/d9;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/dC;->A0F(Lcom/facebook/ads/redexgen/X/d9;)V

    .line 79773
    return-void
.end method

.method public final A0h(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 5

    .line 79774
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/dC;->A0I:Ljava/lang/String;

    .line 79775
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v1, p1, v0}, [Ljava/lang/String;

    move-result-object v4

    const/4 v3, 0x0

    const/16 v2, 0x177

    const/16 v1, 0x1d

    const/16 v0, 0x30

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/dC;->A0A(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/d9;

    invoke-direct {v0, v1, v4, v3}, Lcom/facebook/ads/redexgen/X/d9;-><init>(Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 79776
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/dC;->A0F(Lcom/facebook/ads/redexgen/X/d9;)V

    .line 79777
    return-void
.end method

.method public final A0i(Ljava/util/Map;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 79778
    .local p2, "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v4, p0

    const/16 v2, 0x57

    const/16 v1, 0x10

    const/16 v0, 0x56

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/dC;->A0A(III)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v5, p1

    invoke-interface {v5, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/dC;->A0B:Lcom/facebook/ads/redexgen/X/gi;

    .line 79779
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Up;->A20(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 79780
    :try_start_0
    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 79781
    .local v0, "batchedFrameData":Lorg/json/JSONArray;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 79782
    .local v4, "frames":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/video/framebasedlogging/VideoFrameInfo;>;"
    const/4 v6, 0x0

    .local v5, "i":I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v6, v0, :cond_1

    .line 79783
    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 79784
    .local v6, "rawFrame":Lorg/json/JSONArray;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 79785
    .local v7, "encodingTimestamp":Ljava/lang/String;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 79786
    .local v8, "displayPlayerTimestamp":Ljava/lang/String;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 79787
    .local v9, "unixTimestamp":Ljava/lang/String;
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 79788
    .local v10, "audioTimestamp":Ljava/lang/String;
    if-eqz v10, :cond_0

    if-eqz v9, :cond_0

    if-eqz v8, :cond_0

    .line 79789
    new-instance v11, Lcom/facebook/ads/redexgen/X/iT;

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/dC;->A09:Lcom/facebook/ads/redexgen/X/jd;

    .line 79790
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A2E()Ljava/lang/String;

    move-result-object v12

    .line 79791
    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    .line 79792
    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v15

    .line 79793
    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v17

    invoke-direct/range {v11 .. v18}, Lcom/facebook/ads/redexgen/X/iT;-><init>(Ljava/lang/String;JJJ)V

    .line 79794
    .local v11, "frame":Lcom/facebook/ads/redexgen/X/iT;
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {v11, v0, v1}, Lcom/facebook/ads/redexgen/X/iT;->A06(J)V

    .line 79795
    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79796
    .end local v6    # "rawFrame":Lorg/json/JSONArray;
    .end local v7    # "encodingTimestamp":Ljava/lang/String;
    .end local v8    # "displayPlayerTimestamp":Ljava/lang/String;
    .end local v9    # "unixTimestamp":Ljava/lang/String;
    .end local v10    # "audioTimestamp":Ljava/lang/String;
    .end local v11    # "frame":Lcom/facebook/ads/redexgen/X/iT;
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 79797
    .end local v5    # "i":I
    :cond_1
    invoke-static {v7}, Lcom/facebook/ads/redexgen/X/iS;->A01(Ljava/util/List;)Ljava/lang/String;

    move-result-object v7

    .line 79798
    .local v5, "encodedFrameData":Ljava/lang/String;
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 79799
    .local v6, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v2, 0x73

    const/4 v1, 0x6

    const/16 v0, 0x7e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/dC;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79800
    if-eqz v7, :cond_2

    .line 79801
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/dC;->A0C:Lcom/facebook/ads/redexgen/X/VA;

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/dC;->A09:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A2E()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, v6}, Lcom/facebook/ads/redexgen/X/VA;->ABy(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79802
    :catch_0
    move-exception v1

    .line 79803
    .local v0, "e":Ljava/lang/Exception;
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/dC;->A0B:Lcom/facebook/ads/redexgen/X/gi;

    .line 79804
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->A08()Lcom/facebook/ads/redexgen/X/Tc;

    move-result-object v7

    new-instance v6, Lcom/facebook/ads/redexgen/X/Te;

    invoke-direct {v6, v1}, Lcom/facebook/ads/redexgen/X/Te;-><init>(Ljava/lang/Throwable;)V

    .line 79805
    const/16 v2, 0x112

    const/16 v1, 0xe

    const/16 v0, 0xe

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/dC;->A0A(III)Ljava/lang/String;

    move-result-object v1

    const/16 v0, 0xe10

    invoke-interface {v7, v1, v0, v6}, Lcom/facebook/ads/redexgen/X/Tc;->ABC(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/Te;)V

    .line 79806
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_1
    invoke-interface {v5, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    sget-object v1, Lcom/facebook/ads/redexgen/X/dC;->A0L:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/4 v0, 0x7

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x50

    if-eq v1, v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/dC;->A0L:[Ljava/lang/String;

    const-string v1, "rUTki8v1ZwD35w0l1wx8OInXS6BY1neH"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "OANcXSK4xu3EG1xYwZDVITEIbLyQGtEs"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-eqz v6, :cond_4

    .line 79807
    invoke-interface {v5, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79808
    :cond_4
    iget-object v3, v4, Lcom/facebook/ads/redexgen/X/dC;->A0C:Lcom/facebook/ads/redexgen/X/VA;

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/dC;->A09:Lcom/facebook/ads/redexgen/X/jd;

    .line 79809
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A2E()Ljava/lang/String;

    move-result-object v2

    new-instance v1, Lcom/facebook/ads/redexgen/X/b9;

    invoke-direct {v1, v5}, Lcom/facebook/ads/redexgen/X/b9;-><init>(Ljava/util/Map;)V

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/dC;->A05:Lcom/facebook/ads/redexgen/X/fp;

    .line 79810
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/b9;->A03(Lcom/facebook/ads/redexgen/X/fp;)Lcom/facebook/ads/redexgen/X/b9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/b9;->A05()Ljava/util/Map;

    move-result-object v0

    .line 79811
    invoke-interface {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/VA;->ABB(Ljava/lang/String;Ljava/util/Map;)V

    .line 79812
    return-void
.end method

.method public final A0j(Lorg/json/JSONObject;)V
    .locals 5

    .line 79813
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v0, 0x0

    invoke-static {v1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v0, 0x77

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/dC;->A0A(III)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x23

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/dC;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 79814
    .local v0, "assets":Ljava/lang/String;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dC;->A0I:Ljava/lang/String;

    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x150

    const/16 v1, 0x1a

    const/16 v0, 0x36

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/dC;->A0A(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/d9;

    invoke-direct {v0, v1, v3}, Lcom/facebook/ads/redexgen/X/d9;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/dC;->A0F(Lcom/facebook/ads/redexgen/X/d9;)V

    .line 79815
    return-void
.end method

.method public final A0k()Z
    .locals 1

    .line 79816
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dC;->A0G:Lcom/facebook/ads/redexgen/X/dJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dJ;->A0O()Z

    move-result v0

    return v0
.end method

.method public final A0l()Z
    .locals 1

    .line 79817
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/dC;->A07:Z

    return v0
.end method
