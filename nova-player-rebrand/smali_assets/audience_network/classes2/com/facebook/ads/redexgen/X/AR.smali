.class public final Lcom/facebook/ads/redexgen/X/AR;
.super Lcom/facebook/ads/androidx/media3/common/Timeline;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/androidx/media3/common/Timeline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RemotableTimeline"
.end annotation


# static fields
.field public static A04:[Ljava/lang/String;


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/BP;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/BP<",
            "Lcom/facebook/ads/redexgen/X/pl;",
            ">;"
        }
    .end annotation
.end field

.field public final A01:Lcom/facebook/ads/redexgen/X/BP;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/BP<",
            "Lcom/facebook/ads/redexgen/X/pj;",
            ">;"
        }
    .end annotation
.end field

.field public final A02:[I

.field public final A03:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 625
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "nDkuZZEFG4iGMwbsGEvKBo4ueCI7wxif"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "OM6NJOBBZMKrUazjZz4CdR8Ljfz9nzwy"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "h9AdYD37MAF4FmuzDOyGIvEw"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "VkmtOVI9Gbc78hEhNGIz4LiMtzYnUrU2"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "bkWqGplua99PBwc9ED6yZtwvDtuw6KwN"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "305DBImSoaz5MlD7g6qLfpiwFg5d3Fl"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "QtOjLPNYFNek9UnmHWOFtbeX9w"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "y2avdvKeY0dhYPEmFhuJXZmeyR2ks2D4"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/AR;->A04:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/BP;Lcom/facebook/ads/redexgen/X/BP;[I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/BP<",
            "Lcom/facebook/ads/redexgen/X/pj;",
            ">;",
            "Lcom/facebook/ads/redexgen/X/BP<",
            "Lcom/facebook/ads/redexgen/X/pl;",
            ">;[I)V"
        }
    .end annotation

    .line 29159
    .local p1, "windows":Lcom/facebook/ads/redexgen/X/BP;, "Lcom/google/common/collect/ImmutableList<Lcom/facebook/ads/androidx/media3/common/Timeline$Window;>;"
    .local p2, "periods":Lcom/facebook/ads/redexgen/X/BP;, "Lcom/google/common/collect/ImmutableList<Lcom/facebook/ads/androidx/media3/common/Timeline$Period;>;"
    invoke-direct {p0}, Lcom/facebook/ads/androidx/media3/common/Timeline;-><init>()V

    .line 29160
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/BP;->size()I

    move-result v1

    array-length v0, p3

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A07(Z)V

    .line 29161
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/AR;->A01:Lcom/facebook/ads/redexgen/X/BP;

    .line 29162
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/AR;->A00:Lcom/facebook/ads/redexgen/X/BP;

    .line 29163
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/AR;->A02:[I

    .line 29164
    array-length v0, p3

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/AR;->A03:[I

    .line 29165
    const/4 v2, 0x0

    .local v0, "i":I
    :goto_1
    array-length v0, p3

    if-ge v2, v0, :cond_1

    .line 29166
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/AR;->A03:[I

    aget v0, p3, v2

    aput v2, v1, v0

    .line 29167
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 29168
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 29169
    .end local v0    # "i":I
    :cond_1
    return-void
.end method


# virtual methods
.method public final A06()I
    .locals 1

    .line 29170
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AR;->A00:Lcom/facebook/ads/redexgen/X/BP;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/BP;->size()I

    move-result v0

    return v0
.end method

.method public final A07()I
    .locals 1

    .line 29171
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AR;->A01:Lcom/facebook/ads/redexgen/X/BP;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/BP;->size()I

    move-result v0

    return v0
.end method

.method public final A08(IIZ)I
    .locals 3

    .line 29172
    const/4 v2, 0x1

    if-ne p2, v2, :cond_0

    .line 29173
    return p1

    .line 29174
    :cond_0
    invoke-virtual {p0, p3}, Lcom/facebook/ads/redexgen/X/AR;->A0C(Z)I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 29175
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 29176
    invoke-virtual {p0, p3}, Lcom/facebook/ads/redexgen/X/AR;->A0B(Z)I

    move-result v0

    .line 29177
    :goto_0
    return v0

    .line 29178
    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    .line 29179
    :cond_2
    if-eqz p3, :cond_3

    .line 29180
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/AR;->A02:[I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AR;->A03:[I

    aget v0, v0, p1

    add-int/2addr v0, v2

    aget v0, v1, v0

    .line 29181
    :goto_1
    return v0

    .line 29182
    :cond_3
    add-int/lit8 v0, p1, 0x1

    goto :goto_1
.end method

.method public final A0A(Ljava/lang/Object;)I
    .locals 1

    .line 29183
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final A0B(Z)I
    .locals 5

    .line 29184
    invoke-virtual {p0}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A0N()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29185
    const/4 v0, -0x1

    return v0

    .line 29186
    :cond_0
    const/4 v4, 0x0

    if-eqz p1, :cond_1

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/AR;->A02:[I

    sget-object v1, Lcom/facebook/ads/redexgen/X/AR;->A04:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x16

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x48

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/AR;->A04:[Ljava/lang/String;

    const-string v1, "6ncpOYdEr0xsUZdZBYFnYejLEosAstPL"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    aget v4, v3, v4

    :cond_1
    return v4

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A0C(Z)I
    .locals 2

    .line 29187
    invoke-virtual {p0}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A0N()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29188
    const/4 v0, -0x1

    return v0

    .line 29189
    :cond_0
    if-eqz p1, :cond_1

    .line 29190
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/AR;->A02:[I

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/AR;->A07()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    aget v0, v1, v0

    .line 29191
    :goto_0
    return v0

    .line 29192
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/AR;->A07()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public final A0I(ILcom/facebook/ads/redexgen/X/pl;Z)Lcom/facebook/ads/redexgen/X/pl;
    .locals 10

    .line 29193
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AR;->A00:Lcom/facebook/ads/redexgen/X/BP;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/BP;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/pl;

    .line 29194
    .local v0, "p":Lcom/facebook/ads/redexgen/X/pl;
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/pl;->A03:Ljava/lang/Object;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/pl;->A04:Ljava/lang/Object;

    iget v3, v0, Lcom/facebook/ads/redexgen/X/pl;->A00:I

    iget-wide v4, v0, Lcom/facebook/ads/redexgen/X/pl;->A01:J

    iget-wide v6, v0, Lcom/facebook/ads/redexgen/X/pl;->A02:J

    .line 29195
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/pl;->A00(Lcom/facebook/ads/redexgen/X/pl;)Lcom/facebook/ads/redexgen/X/qS;

    move-result-object v8

    iget-boolean v9, v0, Lcom/facebook/ads/redexgen/X/pl;->A05:Z

    .line 29196
    move-object v0, p2

    invoke-virtual/range {v0 .. v9}, Lcom/facebook/ads/redexgen/X/pl;->A0G(Ljava/lang/Object;Ljava/lang/Object;IJJLcom/facebook/ads/redexgen/X/qS;Z)Lcom/facebook/ads/redexgen/X/pl;

    .line 29197
    return-object v0
.end method

.method public final A0L(ILcom/facebook/ads/redexgen/X/pj;J)Lcom/facebook/ads/redexgen/X/pj;
    .locals 35

    .line 29198
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/AR;->A01:Lcom/facebook/ads/redexgen/X/BP;

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/BP;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/facebook/ads/redexgen/X/pj;

    .line 29199
    .local v12, "w":Lcom/facebook/ads/redexgen/X/pj;
    iget-object v0, v13, Lcom/facebook/ads/redexgen/X/pj;->A0C:Ljava/lang/Object;

    move-object/from16 v21, v0

    iget-object v0, v13, Lcom/facebook/ads/redexgen/X/pj;->A09:Lcom/facebook/ads/redexgen/X/q7;

    move-object/from16 v20, v0

    iget-object v0, v13, Lcom/facebook/ads/redexgen/X/pj;->A0A:Ljava/lang/Object;

    move-object/from16 v19, v0

    iget-wide v5, v13, Lcom/facebook/ads/redexgen/X/pj;->A06:J

    iget-wide v3, v13, Lcom/facebook/ads/redexgen/X/pj;->A07:J

    iget-wide v1, v13, Lcom/facebook/ads/redexgen/X/pj;->A04:J

    iget-boolean v0, v13, Lcom/facebook/ads/redexgen/X/pj;->A0G:Z

    move/from16 v18, v0

    iget-boolean v0, v13, Lcom/facebook/ads/redexgen/X/pj;->A0D:Z

    move/from16 v17, v0

    iget-object v0, v13, Lcom/facebook/ads/redexgen/X/pj;->A08:Lcom/facebook/ads/redexgen/X/qA;

    move-object/from16 v16, v0

    move-object/from16 v14, p2

    move-object v14, v14

    .end local v12    # "w":Lcom/facebook/ads/redexgen/X/pj;
    .local v0, "w":Lcom/facebook/ads/redexgen/X/pj;
    iget-wide v11, v13, Lcom/facebook/ads/redexgen/X/pj;->A02:J

    iget-wide v9, v13, Lcom/facebook/ads/redexgen/X/pj;->A03:J

    iget v15, v13, Lcom/facebook/ads/redexgen/X/pj;->A00:I

    iget v0, v13, Lcom/facebook/ads/redexgen/X/pj;->A01:I

    iget-wide v7, v13, Lcom/facebook/ads/redexgen/X/pj;->A05:J

    .end local v0    # "w":Lcom/facebook/ads/redexgen/X/pj;
    .local v24, "w":Lcom/facebook/ads/redexgen/X/pj;
    move-wide/from16 v29, v9

    move/from16 v31, v15

    move/from16 v32, v0

    move-wide/from16 v33, v7

    move-wide/from16 v22, v1

    move/from16 v24, v18

    move/from16 v25, v17

    move-object/from16 v26, v16

    move-wide/from16 v27, v11

    move-object/from16 v15, v21

    move-object/from16 v16, v20

    move-object/from16 v17, v19

    move-wide/from16 v18, v5

    move-wide/from16 v20, v3

    invoke-virtual/range {v14 .. v34}, Lcom/facebook/ads/redexgen/X/pj;->A07(Ljava/lang/Object;Lcom/facebook/ads/redexgen/X/q7;Ljava/lang/Object;JJJZZLcom/facebook/ads/redexgen/X/qA;JJIIJ)Lcom/facebook/ads/redexgen/X/pj;

    .line 29200
    .end local v24    # "w":Lcom/facebook/ads/redexgen/X/pj;
    .restart local v0    # "w":Lcom/facebook/ads/redexgen/X/pj;
    iget-boolean v0, v13, Lcom/facebook/ads/redexgen/X/pj;->A0F:Z

    iput-boolean v0, v14, Lcom/facebook/ads/redexgen/X/pj;->A0F:Z

    .line 29201
    return-object v14
.end method

.method public final A0M(I)Ljava/lang/Object;
    .locals 1

    .line 29202
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
