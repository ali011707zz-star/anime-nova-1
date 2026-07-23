.class public final Lcom/facebook/ads/redexgen/X/JQ;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public A00:I

.field public A01:I

.field public A02:J

.field public A03:J

.field public A04:J

.field public A05:J

.field public A06:Lcom/facebook/ads/redexgen/X/J1;

.field public A07:Lcom/facebook/ads/redexgen/X/JP;

.field public A08:Z

.field public A09:Z

.field public A0A:Z

.field public A0B:[I

.field public A0C:[I

.field public A0D:[J

.field public A0E:[J

.field public A0F:[Z

.field public A0G:[Z

.field public final A0H:Lcom/facebook/ads/redexgen/X/4v;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 42940
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42941
    const/4 v1, 0x0

    new-array v0, v1, [J

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/JQ;->A0E:[J

    .line 42942
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/JQ;->A0C:[I

    .line 42943
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/JQ;->A0B:[I

    .line 42944
    new-array v0, v1, [J

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/JQ;->A0D:[J

    .line 42945
    new-array v0, v1, [Z

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/JQ;->A0G:[Z

    .line 42946
    new-array v0, v1, [Z

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/JQ;->A0F:[Z

    .line 42947
    new-instance v0, Lcom/facebook/ads/redexgen/X/4v;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/4v;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/JQ;->A0H:Lcom/facebook/ads/redexgen/X/4v;

    .line 42948
    return-void
.end method


# virtual methods
.method public final A00(I)J
    .locals 2

    .line 42949
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JQ;->A0D:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public final A01()V
    .locals 3

    .line 42950
    const/4 v2, 0x0

    iput v2, p0, Lcom/facebook/ads/redexgen/X/JQ;->A01:I

    .line 42951
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/JQ;->A05:J

    .line 42952
    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/JQ;->A09:Z

    .line 42953
    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/JQ;->A08:Z

    .line 42954
    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/JQ;->A0A:Z

    .line 42955
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/JQ;->A07:Lcom/facebook/ads/redexgen/X/JP;

    .line 42956
    return-void
.end method

.method public final A02(I)V
    .locals 1

    .line 42957
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JQ;->A0H:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/4v;->A0d(I)V

    .line 42958
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/JQ;->A08:Z

    .line 42959
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/JQ;->A0A:Z

    .line 42960
    return-void
.end method

.method public final A03(II)V
    .locals 2

    .line 42961
    iput p1, p0, Lcom/facebook/ads/redexgen/X/JQ;->A01:I

    .line 42962
    iput p2, p0, Lcom/facebook/ads/redexgen/X/JQ;->A00:I

    .line 42963
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JQ;->A0C:[I

    array-length v0, v0

    if-ge v0, p1, :cond_0

    .line 42964
    new-array v0, p1, [J

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/JQ;->A0E:[J

    .line 42965
    new-array v0, p1, [I

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/JQ;->A0C:[I

    .line 42966
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JQ;->A0B:[I

    array-length v0, v0

    if-ge v0, p2, :cond_1

    .line 42967
    mul-int/lit8 v0, p2, 0x7d

    div-int/lit8 v1, v0, 0x64

    .line 42968
    .local v0, "tableSize":I
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/JQ;->A0B:[I

    .line 42969
    new-array v0, v1, [J

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/JQ;->A0D:[J

    .line 42970
    new-array v0, v1, [Z

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/JQ;->A0G:[Z

    .line 42971
    new-array v0, v1, [Z

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/JQ;->A0F:[Z

    .line 42972
    .end local v0    # "tableSize":I
    :cond_1
    return-void
.end method

.method public final A04(Lcom/facebook/ads/redexgen/X/4v;)V
    .locals 3

    .line 42973
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JQ;->A0H:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A0l()[B

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JQ;->A0H:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A0A()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4v;->A0k([BII)V

    .line 42974
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JQ;->A0H:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/4v;->A0f(I)V

    .line 42975
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/JQ;->A0A:Z

    .line 42976
    return-void
.end method

.method public final A05(Lcom/facebook/ads/redexgen/X/ms;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 42977
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JQ;->A0H:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A0l()[B

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JQ;->A0H:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A0A()I

    move-result v0

    const/4 v1, 0x0

    invoke-interface {p1, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ms;->readFully([BII)V

    .line 42978
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JQ;->A0H:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/4v;->A0f(I)V

    .line 42979
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/JQ;->A0A:Z

    .line 42980
    return-void
.end method

.method public final A06(I)Z
    .locals 1

    .line 42981
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/JQ;->A08:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JQ;->A0F:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
