.class public final Lcom/facebook/ads/redexgen/X/nC;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/F0;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:[Lcom/facebook/ads/redexgen/X/Ey;

.field public final A04:I

.field public final A05:Z

.field public final A06:[B


# direct methods
.method public constructor <init>(ZI)V
    .locals 1

    .line 99962
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/ads/redexgen/X/nC;-><init>(ZII)V

    .line 99963
    return-void
.end method

.method public constructor <init>(ZII)V
    .locals 5

    .line 99964
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99965
    const/4 v1, 0x0

    if-lez p2, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A07(Z)V

    .line 99966
    if-ltz p3, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/3y;->A07(Z)V

    .line 99967
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/nC;->A05:Z

    .line 99968
    iput p2, p0, Lcom/facebook/ads/redexgen/X/nC;->A04:I

    .line 99969
    iput p3, p0, Lcom/facebook/ads/redexgen/X/nC;->A01:I

    .line 99970
    add-int/lit8 v0, p3, 0x64

    new-array v0, v0, [Lcom/facebook/ads/redexgen/X/Ey;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/nC;->A03:[Lcom/facebook/ads/redexgen/X/Ey;

    .line 99971
    if-lez p3, :cond_2

    .line 99972
    mul-int v0, p3, p2

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/nC;->A06:[B

    .line 99973
    const/4 v4, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v4, p3, :cond_3

    .line 99974
    mul-int v3, v4, p2

    .line 99975
    .local v1, "allocationOffset":I
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/nC;->A03:[Lcom/facebook/ads/redexgen/X/Ey;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/nC;->A06:[B

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ey;

    invoke-direct {v0, v1, v3}, Lcom/facebook/ads/redexgen/X/Ey;-><init>([BI)V

    aput-object v0, v2, v4

    .line 99976
    .end local v1    # "allocationOffset":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 99977
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 99978
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/nC;->A06:[B

    .line 99979
    :cond_3
    return-void
.end method


# virtual methods
.method public final declared-synchronized A00()I
    .locals 2

    monitor-enter p0

    .line 99980
    :try_start_0
    iget v1, p0, Lcom/facebook/ads/redexgen/X/nC;->A00:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/nC;->A04:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    mul-int/2addr v1, v0

    monitor-exit p0

    return v1

    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/nC;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A01()V
    .locals 1

    monitor-enter p0

    .line 99981
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/nC;->A05:Z

    if-eqz v0, :cond_0

    .line 99982
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/nC;->A02(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99983
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/nC;
    :cond_0
    monitor-exit p0

    return-void

    .line 99984
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A02(I)V
    .locals 1

    monitor-enter p0

    .line 99985
    :try_start_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/nC;->A02:I

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 99986
    .local v0, "targetBufferSizeReduced":Z
    :goto_0
    iput p1, p0, Lcom/facebook/ads/redexgen/X/nC;->A02:I

    .line 99987
    if-eqz v0, :cond_1

    .line 99988
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/nC;->AKT()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99989
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/nC;
    :cond_1
    monitor-exit p0

    return-void

    .line 99990
    .end local v0    # "targetBufferSizeReduced":Z
    .end local p1    # null:I
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A49()Lcom/facebook/ads/redexgen/X/Ey;
    .locals 4

    monitor-enter p0

    .line 99991
    :try_start_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/nC;->A00:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/nC;->A00:I

    .line 99992
    iget v0, p0, Lcom/facebook/ads/redexgen/X/nC;->A01:I

    if-lez v0, :cond_0

    .line 99993
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/nC;->A03:[Lcom/facebook/ads/redexgen/X/Ey;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/nC;->A01:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/nC;->A01:I

    aget-object v0, v1, v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/Ey;

    .line 99994
    .local v0, "allocation":Lcom/facebook/ads/redexgen/X/Ey;
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/nC;->A03:[Lcom/facebook/ads/redexgen/X/Ey;

    iget v1, p0, Lcom/facebook/ads/redexgen/X/nC;->A01:I

    const/4 v0, 0x0

    aput-object v0, v2, v1

    goto :goto_0

    .line 99995
    :cond_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/nC;->A04:I

    new-array v1, v0, [B

    const/4 v0, 0x0

    new-instance v3, Lcom/facebook/ads/redexgen/X/Ey;

    invoke-direct {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/Ey;-><init>([BI)V

    .line 99996
    .restart local v0    # "allocation":Lcom/facebook/ads/redexgen/X/Ey;
    iget v1, p0, Lcom/facebook/ads/redexgen/X/nC;->A00:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nC;->A03:[Lcom/facebook/ads/redexgen/X/Ey;

    array-length v0, v0

    if-le v1, v0, :cond_1

    .line 99997
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/nC;->A03:[Lcom/facebook/ads/redexgen/X/Ey;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nC;->A03:[Lcom/facebook/ads/redexgen/X/Ey;

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ads/redexgen/X/Ey;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/nC;->A03:[Lcom/facebook/ads/redexgen/X/Ey;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99998
    :cond_1
    :goto_0
    monitor-exit p0

    return-object v3

    .line 99999
    .end local v0    # "allocation":Lcom/facebook/ads/redexgen/X/Ey;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final A8I()I
    .locals 1

    .line 100000
    iget v0, p0, Lcom/facebook/ads/redexgen/X/nC;->A04:I

    return v0
.end method

.method public final declared-synchronized AHd(Lcom/facebook/ads/redexgen/X/Ey;)V
    .locals 3

    monitor-enter p0

    .line 100001
    :try_start_0
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/nC;->A03:[Lcom/facebook/ads/redexgen/X/Ey;

    iget v1, p0, Lcom/facebook/ads/redexgen/X/nC;->A01:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/nC;->A01:I

    aput-object p1, v2, v1

    .line 100002
    iget v0, p0, Lcom/facebook/ads/redexgen/X/nC;->A00:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/nC;->A00:I

    .line 100003
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100004
    monitor-exit p0

    return-void

    .line 100005
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/nC;
    .end local p1    # null:Lcom/facebook/ads/redexgen/X/Ey;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized AHe(Lcom/facebook/ads/redexgen/X/Ez;)V
    .locals 3

    monitor-enter p0

    .line 100006
    :goto_0
    if-eqz p1, :cond_0

    .line 100007
    :try_start_0
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/nC;->A03:[Lcom/facebook/ads/redexgen/X/Ey;

    iget v1, p0, Lcom/facebook/ads/redexgen/X/nC;->A01:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/nC;->A01:I

    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/Ez;->A6u()Lcom/facebook/ads/redexgen/X/Ey;

    move-result-object v0

    aput-object v0, v2, v1

    .line 100008
    iget v0, p0, Lcom/facebook/ads/redexgen/X/nC;->A00:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/nC;->A00:I

    .line 100009
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/Ez;->ACc()Lcom/facebook/ads/redexgen/X/ni;

    move-result-object p1

    goto :goto_0

    .line 100010
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/nC;
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100011
    monitor-exit p0

    return-void

    .line 100012
    .end local p1    # null:Lcom/facebook/ads/redexgen/X/Ez;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized AKT()V
    .locals 8

    monitor-enter p0

    .line 100013
    :try_start_0
    iget v1, p0, Lcom/facebook/ads/redexgen/X/nC;->A02:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/nC;->A04:I

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A05(II)I

    move-result v1

    .line 100014
    .local v0, "targetAllocationCount":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/nC;->A00:I

    sub-int/2addr v1, v0

    const/4 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 100015
    .local v1, "targetAvailableCount":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/nC;->A01:I

    if-lt v3, v0, :cond_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100016
    monitor-exit p0

    return-void

    .line 100017
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nC;->A06:[B

    if-eqz v0, :cond_4

    .line 100018
    const/4 v7, 0x0

    .line 100019
    .local v2, "lowIndex":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/nC;->A01:I

    add-int/lit8 v6, v0, -0x1

    .line 100020
    .local v3, "highIndex":I
    :goto_0
    if-gt v7, v6, :cond_3

    .line 100021
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nC;->A03:[Lcom/facebook/ads/redexgen/X/Ey;

    aget-object v0, v0, v7

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/ads/redexgen/X/Ey;

    .line 100022
    .local v4, "lowAllocation":Lcom/facebook/ads/redexgen/X/Ey;
    iget-object v1, v5, Lcom/facebook/ads/redexgen/X/Ey;->A01:[B

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nC;->A06:[B

    if-ne v1, v0, :cond_1

    .line 100023
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 100024
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nC;->A03:[Lcom/facebook/ads/redexgen/X/Ey;

    aget-object v0, v0, v6

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/ads/redexgen/X/Ey;

    .line 100025
    .local v5, "highAllocation":Lcom/facebook/ads/redexgen/X/Ey;
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/Ey;->A01:[B

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nC;->A06:[B

    if-eq v1, v0, :cond_2

    .line 100026
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    .line 100027
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nC;->A03:[Lcom/facebook/ads/redexgen/X/Ey;

    add-int/lit8 v2, v7, 0x1

    .end local v2    # "lowIndex":I
    .local v7, "lowIndex":I
    aput-object v4, v0, v7

    .line 100028
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/nC;->A03:[Lcom/facebook/ads/redexgen/X/Ey;

    add-int/lit8 v0, v6, -0x1

    .end local v3    # "highIndex":I
    .local v6, "highIndex":I
    aput-object v5, v1, v6

    move v6, v0

    move v7, v2

    goto :goto_0

    .line 100029
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/nC;
    :cond_3
    invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 100030
    iget v0, p0, Lcom/facebook/ads/redexgen/X/nC;->A01:I

    if-lt v3, v0, :cond_4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 100031
    monitor-exit p0

    return-void

    .line 100032
    .end local v2
    .end local v3
    :cond_4
    :try_start_2
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/nC;->A03:[Lcom/facebook/ads/redexgen/X/Ey;

    iget v1, p0, Lcom/facebook/ads/redexgen/X/nC;->A01:I

    const/4 v0, 0x0

    invoke-static {v2, v3, v1, v0}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 100033
    iput v3, p0, Lcom/facebook/ads/redexgen/X/nC;->A01:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 100034
    monitor-exit p0

    return-void

    .line 100035
    .end local v0    # "targetAllocationCount":I
    .end local v1    # "targetAvailableCount":I
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
