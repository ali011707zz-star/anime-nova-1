.class public abstract Lcom/facebook/ads/redexgen/X/8M;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/lq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/1V;,
        Lcom/facebook/ads/redexgen/X/1U;
    }
.end annotation


# static fields
.field public static A06:[Ljava/lang/String;


# instance fields
.field public A00:J

.field public A01:J

.field public A02:Lcom/facebook/ads/redexgen/X/1V;

.field public final A03:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/facebook/ads/redexgen/X/1V;",
            ">;"
        }
    .end annotation
.end field

.field public final A04:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/facebook/ads/redexgen/X/8P;",
            ">;"
        }
    .end annotation
.end field

.field public final A05:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue<",
            "Lcom/facebook/ads/redexgen/X/1V;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 499
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "A1ZwXb6JdBVxSPYV1ZzpyUVQy2gRfJA9"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "vkvPFBYHwcZnb4NzphHjmgFJFbjiYwSo"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "W7sj7Up3ABI8RZFTAAZOEHe7srfTkl57"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "fls3PiASqtk6GqNgTZFqwBZFoYeyHn2V"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "1yDmXHBn42mad7W8CPx8A7RWKYn1BqT7"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "CjPJSc8sfbO2R56Y3Yx9Z137FYjSqvlb"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "2KSypf5DjPiLYF3nQ7brfSsHONTUzR5A"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "k5ePLg8NJJ"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/8M;->A06:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 22786
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22787
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/8M;->A03:Ljava/util/ArrayDeque;

    .line 22788
    const/4 v3, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v0, 0xa

    if-ge v3, v0, :cond_0

    .line 22789
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/8M;->A03:Ljava/util/ArrayDeque;

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/1V;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/1V;-><init>(Lcom/facebook/ads/redexgen/X/Jr;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 22790
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 22791
    .end local v0    # "i":I
    :cond_0
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/8M;->A04:Ljava/util/ArrayDeque;

    .line 22792
    const/4 v3, 0x0

    .restart local v0    # "i":I
    :goto_1
    const/4 v0, 0x2

    if-ge v3, v0, :cond_1

    .line 22793
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/8M;->A04:Ljava/util/ArrayDeque;

    new-instance v1, Lcom/facebook/ads/redexgen/X/li;

    invoke-direct {v1, p0}, Lcom/facebook/ads/redexgen/X/li;-><init>(Lcom/facebook/ads/redexgen/X/8M;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/1U;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/1U;-><init>(Lcom/facebook/ads/redexgen/X/64;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 22794
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 22795
    .end local v0    # "i":I
    :cond_1
    new-instance v0, Ljava/util/PriorityQueue;

    invoke-direct {v0}, Ljava/util/PriorityQueue;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/8M;->A05:Ljava/util/PriorityQueue;

    .line 22796
    return-void
.end method

.method private A0U(Lcom/facebook/ads/redexgen/X/1V;)V
    .locals 1

    .line 22797
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/p0;->A0A()V

    .line 22798
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8M;->A03:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 22799
    return-void
.end method


# virtual methods
.method public final A0V()J
    .locals 2

    .line 22800
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/8M;->A00:J

    return-wide v0
.end method

.method public A0W()Lcom/facebook/ads/redexgen/X/8S;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/lj;
        }
    .end annotation

    .line 22801
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8M;->A02:Lcom/facebook/ads/redexgen/X/1V;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A08(Z)V

    .line 22802
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8M;->A03:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 22803
    const/4 v0, 0x0

    return-object v0

    .line 22804
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 22805
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8M;->A03:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/1V;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/8M;->A02:Lcom/facebook/ads/redexgen/X/1V;

    .line 22806
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8M;->A02:Lcom/facebook/ads/redexgen/X/1V;

    return-object v0
.end method

.method public A0X()Lcom/facebook/ads/redexgen/X/8P;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/lj;
        }
    .end annotation

    .line 22807
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8M;->A04:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    const/4 v5, 0x0

    if-eqz v0, :cond_0

    .line 22808
    return-object v5

    .line 22809
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8M;->A05:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/8M;->A06:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/4 v0, 0x7

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x73

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/8M;->A06:[Ljava/lang/String;

    const-string v1, "DOprmnWJZ9SCRw8WSrP7EOY5DTOSvJmV"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-nez v3, :cond_7

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8M;->A05:Ljava/util/PriorityQueue;

    .line 22810
    invoke-virtual {v0}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/8M;->A06:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xa

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/8M;->A06:[Ljava/lang/String;

    const-string v1, "urX0HrInINzEpwrp6LaPdmgGjQDQJQna"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    check-cast v3, Lcom/facebook/ads/redexgen/X/1V;

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/5C;->A0f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/1V;

    iget-wide v3, v0, Lcom/facebook/ads/redexgen/X/p0;->A01:J

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/8M;->A00:J

    cmp-long v0, v3, v1

    if-gtz v0, :cond_7

    .line 22811
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8M;->A05:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/1V;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5C;->A0f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/1V;

    .line 22812
    .local v0, "inputBuffer":Lcom/facebook/ads/redexgen/X/1V;
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/5u;->A05()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 22813
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8M;->A04:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/8P;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5C;->A0f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/ads/redexgen/X/8P;

    .line 22814
    .local v1, "outputBuffer":Lcom/facebook/ads/redexgen/X/8P;
    const/4 v0, 0x4

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/5u;->A00(I)V

    .line 22815
    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/8M;->A0U(Lcom/facebook/ads/redexgen/X/1V;)V

    sget-object v2, Lcom/facebook/ads/redexgen/X/8M;->A06:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v2, v2, v0

    const/16 v0, 0x19

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_5

    .line 22816
    return-object v4

    .line 22817
    .end local v1    # "outputBuffer":Lcom/facebook/ads/redexgen/X/8P;
    :cond_3
    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/8M;->A0b(Lcom/facebook/ads/redexgen/X/8S;)V

    .line 22818
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/8M;->A0d()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 22819
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/8M;->A0Z()Lcom/facebook/ads/redexgen/X/lh;

    move-result-object v7

    .line 22820
    .local v1, "subtitle":Lcom/facebook/ads/redexgen/X/Jj;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8M;->A04:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/8P;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5C;->A0f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/ads/redexgen/X/8P;

    .line 22821
    .local v2, "outputBuffer":Lcom/facebook/ads/redexgen/X/8P;
    iget-wide v5, v3, Lcom/facebook/ads/redexgen/X/p0;->A01:J

    const-wide v8, 0x7fffffffffffffffL

    sget-object v2, Lcom/facebook/ads/redexgen/X/8M;->A06:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v2, v2, v0

    const/16 v0, 0x19

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_6

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 22822
    .end local v1    # "subtitle":Lcom/facebook/ads/redexgen/X/Jj;
    .end local v2    # "outputBuffer":Lcom/facebook/ads/redexgen/X/8P;
    :cond_4
    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/8M;->A0U(Lcom/facebook/ads/redexgen/X/1V;)V

    .line 22823
    .end local v0    # "inputBuffer":Lcom/facebook/ads/redexgen/X/1V;
    goto/16 :goto_0

    .line 22824
    :cond_5
    sget-object v2, Lcom/facebook/ads/redexgen/X/8M;->A06:[Ljava/lang/String;

    const-string v1, "oxl05cpa7UEpdlHPP7s3uyaLsYMYJfaH"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "7KvbtL7fQFgbKwZtHueu0Zl9fYEN12Vy"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    return-object v4

    :cond_6
    sget-object v2, Lcom/facebook/ads/redexgen/X/8M;->A06:[Ljava/lang/String;

    const-string v1, "oIgvRTusAdocLQHm4RFtRlwv19XF7U3W"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-virtual/range {v4 .. v9}, Lcom/facebook/ads/redexgen/X/8P;->A0C(JLcom/facebook/ads/redexgen/X/Jj;J)V

    .line 22825
    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/8M;->A0U(Lcom/facebook/ads/redexgen/X/1V;)V

    .line 22826
    return-object v4

    .line 22827
    :cond_7
    return-object v5
.end method

.method public final A0Y()Lcom/facebook/ads/redexgen/X/8P;
    .locals 1

    .line 22828
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8M;->A04:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/8P;

    return-object v0
.end method

.method public abstract A0Z()Lcom/facebook/ads/redexgen/X/lh;
.end method

.method public A0a(Lcom/facebook/ads/redexgen/X/8S;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/lj;
        }
    .end annotation

    .line 22829
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8M;->A02:Lcom/facebook/ads/redexgen/X/1V;

    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A07(Z)V

    .line 22830
    check-cast p1, Lcom/facebook/ads/redexgen/X/1V;

    .line 22831
    .local v0, "ceaInputBuffer":Lcom/facebook/ads/redexgen/X/1V;
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/5u;->A04()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22832
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/8M;->A0U(Lcom/facebook/ads/redexgen/X/1V;)V

    .line 22833
    :goto_1
    const/4 v3, 0x0

    sget-object v1, Lcom/facebook/ads/redexgen/X/8M;->A06:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xa

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 22834
    :cond_0
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/8M;->A01:J

    const-wide/16 v0, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/8M;->A01:J

    invoke-static {p1, v2, v3}, Lcom/facebook/ads/redexgen/X/1V;->A01(Lcom/facebook/ads/redexgen/X/1V;J)J

    .line 22835
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8M;->A05:Ljava/util/PriorityQueue;

    invoke-virtual {v0, p1}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 22836
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/8M;->A06:[Ljava/lang/String;

    const-string v1, "rj1eyhsOe6SuoM1rYy40tvsoNCkJE80J"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "ibYLffFAaVDMN4cD1vowu1tbJEM8Lkom"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/8M;->A02:Lcom/facebook/ads/redexgen/X/1V;

    .line 22837
    return-void
.end method

.method public abstract A0b(Lcom/facebook/ads/redexgen/X/8S;)V
.end method

.method public final A0c(Lcom/facebook/ads/redexgen/X/8P;)V
    .locals 1

    .line 22838
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/8P;->A0A()V

    .line 22839
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8M;->A04:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 22840
    return-void
.end method

.method public abstract A0d()Z
.end method

.method public final bridge synthetic A5r()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/61;
        }
    .end annotation

    .line 22841
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/8M;->A0W()Lcom/facebook/ads/redexgen/X/8S;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic A5t()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/61;
        }
    .end annotation

    .line 22842
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/8M;->A0X()Lcom/facebook/ads/redexgen/X/8P;

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

    .line 22843
    check-cast p1, Lcom/facebook/ads/redexgen/X/8S;

    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/8M;->A0a(Lcom/facebook/ads/redexgen/X/8S;)V

    return-void
.end method

.method public AHb()V
    .locals 0

    .line 22844
    return-void
.end method

.method public AJh(J)V
    .locals 0

    .line 22845
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/8M;->A00:J

    .line 22846
    return-void
.end method

.method public flush()V
    .locals 2

    .line 22847
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/8M;->A01:J

    .line 22848
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/8M;->A00:J

    .line 22849
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8M;->A05:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 22850
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8M;->A05:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/1V;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5C;->A0f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/1V;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/8M;->A0U(Lcom/facebook/ads/redexgen/X/1V;)V

    goto :goto_0

    .line 22851
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8M;->A02:Lcom/facebook/ads/redexgen/X/1V;

    if-eqz v0, :cond_1

    .line 22852
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8M;->A02:Lcom/facebook/ads/redexgen/X/1V;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/8M;->A0U(Lcom/facebook/ads/redexgen/X/1V;)V

    .line 22853
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/8M;->A02:Lcom/facebook/ads/redexgen/X/1V;

    .line 22854
    :cond_1
    return-void
.end method
