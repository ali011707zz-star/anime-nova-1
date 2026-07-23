.class public final Lcom/facebook/ads/redexgen/X/9k;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/lq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/nT;,
        Lcom/facebook/ads/androidx/media3/exoplayer/text/ExoplayerCuesDecoder$InputBufferState;
    }
.end annotation


# static fields
.field public static A05:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:Z

.field public final A02:Lcom/facebook/ads/redexgen/X/Jh;

.field public final A03:Lcom/facebook/ads/redexgen/X/8S;

.field public final A04:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lcom/facebook/ads/redexgen/X/8P;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 584
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "09FvAMDbH0ybjBvy7etGUlmvLnEax64M"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "9UhXzLA65KAjnLS2nIkoWygikqgIUMi6"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "7x5jjcV5dGluzAi4xLXm7mPjpISGuC5w"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "OMb242EU3cjCZF5lkBhqnraDuTpVEe8I"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "YkwDHYmprJhwUHAQbO7ClYxi5co4mZVB"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "F0wri1MO2ggHk2Yd2fKtZmsEqFQ1SY6P"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "VahsyjeijnOod8dsGLMZVGg77qfAqG3R"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "hv5jyUmHRXfPhpozztfXRSgwdurH1xzL"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/9k;->A05:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 25649
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25650
    new-instance v0, Lcom/facebook/ads/redexgen/X/Jh;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Jh;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9k;->A02:Lcom/facebook/ads/redexgen/X/Jh;

    .line 25651
    new-instance v0, Lcom/facebook/ads/redexgen/X/8S;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/8S;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9k;->A03:Lcom/facebook/ads/redexgen/X/8S;

    .line 25652
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9k;->A04:Ljava/util/Deque;

    .line 25653
    const/4 v2, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v0, 0x2

    if-ge v2, v0, :cond_0

    .line 25654
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9k;->A04:Ljava/util/Deque;

    new-instance v0, Lcom/facebook/ads/redexgen/X/1c;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/1c;-><init>(Lcom/facebook/ads/redexgen/X/9k;)V

    invoke-interface {v1, v0}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    .line 25655
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 25656
    .end local v0    # "i":I
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/9k;->A00:I

    .line 25657
    return-void
.end method

.method private final A00()Lcom/facebook/ads/redexgen/X/8S;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/lj;
        }
    .end annotation

    .line 25658
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/9k;->A01:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A08(Z)V

    .line 25659
    iget v0, p0, Lcom/facebook/ads/redexgen/X/9k;->A00:I

    if-eqz v0, :cond_0

    .line 25660
    const/4 v0, 0x0

    return-object v0

    .line 25661
    :cond_0
    iput v1, p0, Lcom/facebook/ads/redexgen/X/9k;->A00:I

    .line 25662
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9k;->A03:Lcom/facebook/ads/redexgen/X/8S;

    return-object v0
.end method

.method private final A01()Lcom/facebook/ads/redexgen/X/8P;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/lj;
        }
    .end annotation

    .line 25663
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/9k;->A01:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A08(Z)V

    .line 25664
    iget v1, p0, Lcom/facebook/ads/redexgen/X/9k;->A00:I

    const/4 v0, 0x2

    if-ne v1, v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9k;->A04:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 25665
    .end local v0
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 25666
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9k;->A04:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/ads/redexgen/X/8P;

    .line 25667
    .local v0, "outputBuffer":Lcom/facebook/ads/redexgen/X/8P;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9k;->A03:Lcom/facebook/ads/redexgen/X/8S;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/5u;->A05()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 25668
    const/4 v3, 0x4

    sget-object v2, Lcom/facebook/ads/redexgen/X/9k;->A05:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/9k;->A05:[Ljava/lang/String;

    const-string v1, "JYyYZLdoMjCFjS6FBvPaG66m4kKjUjXi"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-virtual {v4, v3}, Lcom/facebook/ads/redexgen/X/5u;->A00(I)V

    .line 25669
    .end local v4
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9k;->A03:Lcom/facebook/ads/redexgen/X/8S;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/p0;->A0A()V

    .line 25670
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/9k;->A00:I

    .line 25671
    return-object v4

    .line 25672
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9k;->A03:Lcom/facebook/ads/redexgen/X/8S;

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/p0;->A01:J

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/9k;->A02:Lcom/facebook/ads/redexgen/X/Jh;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9k;->A03:Lcom/facebook/ads/redexgen/X/8S;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/p0;->A02:Ljava/nio/ByteBuffer;

    .line 25673
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/Jh;->A02([B)Lcom/facebook/ads/redexgen/X/BP;

    move-result-object v0

    new-instance v7, Lcom/facebook/ads/redexgen/X/nT;

    invoke-direct {v7, v1, v2, v0}, Lcom/facebook/ads/redexgen/X/nT;-><init>(JLcom/facebook/ads/redexgen/X/BP;)V

    .line 25674
    .local v4, "subtitle":Lcom/facebook/ads/redexgen/X/nT;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9k;->A03:Lcom/facebook/ads/redexgen/X/8S;

    iget-wide v5, v0, Lcom/facebook/ads/redexgen/X/p0;->A01:J

    const-wide/16 v8, 0x0

    invoke-virtual/range {v4 .. v9}, Lcom/facebook/ads/redexgen/X/8P;->A0C(JLcom/facebook/ads/redexgen/X/Jj;J)V

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/9k;Lcom/facebook/ads/redexgen/X/8P;)V
    .locals 0

    .line 25675
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/9k;->A04(Lcom/facebook/ads/redexgen/X/8P;)V

    return-void
.end method

.method private final A03(Lcom/facebook/ads/redexgen/X/8S;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/lj;
        }
    .end annotation

    .line 25676
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/9k;->A01:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A08(Z)V

    .line 25677
    iget v0, p0, Lcom/facebook/ads/redexgen/X/9k;->A00:I

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A08(Z)V

    .line 25678
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9k;->A03:Lcom/facebook/ads/redexgen/X/8S;

    if-ne v0, p1, :cond_0

    :goto_1
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/3y;->A07(Z)V

    .line 25679
    const/4 v0, 0x2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/9k;->A00:I

    .line 25680
    return-void

    .line 25681
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 25682
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private A04(Lcom/facebook/ads/redexgen/X/8P;)V
    .locals 3

    .line 25683
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9k;->A04:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v2

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ge v2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A08(Z)V

    .line 25684
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9k;->A04:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A07(Z)V

    .line 25685
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/8P;->A0A()V

    .line 25686
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9k;->A04:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    .line 25687
    return-void

    .line 25688
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic A5r()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/61;
        }
    .end annotation

    .line 25689
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/9k;->A00()Lcom/facebook/ads/redexgen/X/8S;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic A5t()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/61;
        }
    .end annotation

    .line 25690
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/9k;->A01()Lcom/facebook/ads/redexgen/X/8P;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic AHJ(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/61;
        }
    .end annotation

    .line 25691
    check-cast p1, Lcom/facebook/ads/redexgen/X/8S;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/9k;->A03(Lcom/facebook/ads/redexgen/X/8S;)V

    return-void
.end method

.method public final AHb()V
    .locals 1

    .line 25692
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/9k;->A01:Z

    .line 25693
    return-void
.end method

.method public final AJh(J)V
    .locals 0

    .line 25694
    return-void
.end method

.method public final flush()V
    .locals 1

    .line 25695
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/9k;->A01:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A08(Z)V

    .line 25696
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9k;->A03:Lcom/facebook/ads/redexgen/X/8S;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/p0;->A0A()V

    .line 25697
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/9k;->A00:I

    .line 25698
    return-void
.end method
