.class public final Lcom/facebook/ads/redexgen/X/oJ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/3k;


# instance fields
.field public A00:F

.field public A01:F

.field public A02:I

.field public A03:J

.field public A04:J

.field public A05:Lcom/facebook/ads/redexgen/X/3i;

.field public A06:Lcom/facebook/ads/redexgen/X/3i;

.field public A07:Lcom/facebook/ads/redexgen/X/3i;

.field public A08:Lcom/facebook/ads/redexgen/X/3i;

.field public A09:Lcom/facebook/ads/redexgen/X/9Y;

.field public A0A:Ljava/nio/ByteBuffer;

.field public A0B:Ljava/nio/ByteBuffer;

.field public A0C:Ljava/nio/ShortBuffer;

.field public A0D:Z

.field public A0E:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 102134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102135
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/facebook/ads/redexgen/X/oJ;->A01:F

    .line 102136
    iput v0, p0, Lcom/facebook/ads/redexgen/X/oJ;->A00:F

    .line 102137
    sget-object v0, Lcom/facebook/ads/redexgen/X/3i;->A05:Lcom/facebook/ads/redexgen/X/3i;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/oJ;->A07:Lcom/facebook/ads/redexgen/X/3i;

    .line 102138
    sget-object v0, Lcom/facebook/ads/redexgen/X/3i;->A05:Lcom/facebook/ads/redexgen/X/3i;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/oJ;->A08:Lcom/facebook/ads/redexgen/X/3i;

    .line 102139
    sget-object v0, Lcom/facebook/ads/redexgen/X/3i;->A05:Lcom/facebook/ads/redexgen/X/3i;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/oJ;->A05:Lcom/facebook/ads/redexgen/X/3i;

    .line 102140
    sget-object v0, Lcom/facebook/ads/redexgen/X/3i;->A05:Lcom/facebook/ads/redexgen/X/3i;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/oJ;->A06:Lcom/facebook/ads/redexgen/X/3i;

    .line 102141
    sget-object v0, Lcom/facebook/ads/redexgen/X/3k;->A00:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/oJ;->A0A:Ljava/nio/ByteBuffer;

    .line 102142
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oJ;->A0A:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/oJ;->A0C:Ljava/nio/ShortBuffer;

    .line 102143
    sget-object v0, Lcom/facebook/ads/redexgen/X/3k;->A00:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/oJ;->A0B:Ljava/nio/ByteBuffer;

    .line 102144
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/oJ;->A02:I

    .line 102145
    return-void
.end method


# virtual methods
.method public final A00(J)J
    .locals 10

    .line 102146
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/oJ;->A04:J

    const-wide/16 v1, 0x400

    cmp-long v0, v3, v1

    move-wide v4, p1

    if-ltz v0, :cond_1

    .line 102147
    iget-wide v6, p0, Lcom/facebook/ads/redexgen/X/oJ;->A03:J

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oJ;->A09:Lcom/facebook/ads/redexgen/X/9Y;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/9Y;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9Y;->A0I()I

    move-result v0

    int-to-long v0, v0

    sub-long/2addr v6, v0

    .line 102148
    .local v0, "processedInputBytes":J
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oJ;->A06:Lcom/facebook/ads/redexgen/X/3i;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/3i;->A03:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oJ;->A05:Lcom/facebook/ads/redexgen/X/3i;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/3i;->A03:I

    if-ne v1, v0, :cond_0

    .line 102149
    iget-wide v8, p0, Lcom/facebook/ads/redexgen/X/oJ;->A04:J

    invoke-static/range {v4 .. v9}, Lcom/facebook/ads/redexgen/X/5C;->A0U(JJJ)J

    move-result-wide v0

    .line 102150
    :goto_0
    return-wide v0

    .line 102151
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oJ;->A06:Lcom/facebook/ads/redexgen/X/3i;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/3i;->A03:I

    int-to-long v0, v0

    mul-long/2addr v6, v0

    iget-wide v8, p0, Lcom/facebook/ads/redexgen/X/oJ;->A04:J

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oJ;->A05:Lcom/facebook/ads/redexgen/X/3i;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/3i;->A03:I

    int-to-long v0, v0

    mul-long/2addr v8, v0

    invoke-static/range {v4 .. v9}, Lcom/facebook/ads/redexgen/X/5C;->A0U(JJJ)J

    move-result-wide v0

    goto :goto_0

    .line 102152
    .end local v0    # "processedInputBytes":J
    :cond_1
    iget v0, p0, Lcom/facebook/ads/redexgen/X/oJ;->A01:F

    float-to-double v2, v0

    long-to-double v0, v4

    mul-double/2addr v2, v0

    double-to-long v0, v2

    return-wide v0
.end method

.method public final A01(F)V
    .locals 1

    .line 102153
    iget v0, p0, Lcom/facebook/ads/redexgen/X/oJ;->A00:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 102154
    iput p1, p0, Lcom/facebook/ads/redexgen/X/oJ;->A00:F

    .line 102155
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/oJ;->A0E:Z

    .line 102156
    :cond_0
    return-void
.end method

.method public final A02(F)V
    .locals 1

    .line 102157
    iget v0, p0, Lcom/facebook/ads/redexgen/X/oJ;->A01:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 102158
    iput p1, p0, Lcom/facebook/ads/redexgen/X/oJ;->A01:F

    .line 102159
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/oJ;->A0E:Z

    .line 102160
    :cond_0
    return-void
.end method

.method public final A57(Lcom/facebook/ads/redexgen/X/3i;)Lcom/facebook/ads/redexgen/X/3i;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/3j;
        }
    .end annotation

    .line 102161
    iget v0, p1, Lcom/facebook/ads/redexgen/X/3i;->A02:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    .line 102162
    iget v1, p0, Lcom/facebook/ads/redexgen/X/oJ;->A02:I

    const/4 v0, -0x1

    if-ne v1, v0, :cond_0

    .line 102163
    iget v2, p1, Lcom/facebook/ads/redexgen/X/3i;->A03:I

    .line 102164
    .local v0, "outputSampleRateHz":I
    :goto_0
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/oJ;->A07:Lcom/facebook/ads/redexgen/X/3i;

    .line 102165
    iget v1, p1, Lcom/facebook/ads/redexgen/X/3i;->A01:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/3i;

    invoke-direct {v0, v2, v1, v3}, Lcom/facebook/ads/redexgen/X/3i;-><init>(III)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/oJ;->A08:Lcom/facebook/ads/redexgen/X/3i;

    .line 102166
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/oJ;->A0E:Z

    .line 102167
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oJ;->A08:Lcom/facebook/ads/redexgen/X/3i;

    return-object v0

    .line 102168
    :cond_0
    iget v2, p0, Lcom/facebook/ads/redexgen/X/oJ;->A02:I

    goto :goto_0

    .line 102169
    .end local v0    # "outputSampleRateHz":I
    :cond_1
    new-instance v0, Lcom/facebook/ads/redexgen/X/3j;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/3j;-><init>(Lcom/facebook/ads/redexgen/X/3i;)V

    throw v0
.end method

.method public final A8d()Ljava/nio/ByteBuffer;
    .locals 5

    .line 102170
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/oJ;->A09:Lcom/facebook/ads/redexgen/X/9Y;

    .line 102171
    .local v0, "sonic":Lcom/facebook/ads/redexgen/X/9Y;
    if-eqz v2, :cond_0

    .line 102172
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/9Y;->A0H()I

    move-result v4

    .line 102173
    .local v1, "outputSize":I
    if-lez v4, :cond_0

    .line 102174
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oJ;->A0A:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    if-ge v0, v4, :cond_1

    .line 102175
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/oJ;->A0A:Ljava/nio/ByteBuffer;

    .line 102176
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oJ;->A0A:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/oJ;->A0C:Ljava/nio/ShortBuffer;

    .line 102177
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oJ;->A0C:Ljava/nio/ShortBuffer;

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/9Y;->A0L(Ljava/nio/ShortBuffer;)V

    .line 102178
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/oJ;->A04:J

    int-to-long v0, v4

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/oJ;->A04:J

    .line 102179
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oJ;->A0A:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 102180
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oJ;->A0A:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/oJ;->A0B:Ljava/nio/ByteBuffer;

    .line 102181
    .end local v1    # "outputSize":I
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/oJ;->A0B:Ljava/nio/ByteBuffer;

    .line 102182
    .local v1, "outputBuffer":Ljava/nio/ByteBuffer;
    sget-object v0, Lcom/facebook/ads/redexgen/X/3k;->A00:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/oJ;->A0B:Ljava/nio/ByteBuffer;

    .line 102183
    return-object v1

    .line 102184
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oJ;->A0A:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 102185
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oJ;->A0C:Ljava/nio/ShortBuffer;

    invoke-virtual {v0}, Ljava/nio/ShortBuffer;->clear()Ljava/nio/Buffer;

    goto :goto_0
.end method

.method public final AAL()Z
    .locals 3

    .line 102186
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oJ;->A08:Lcom/facebook/ads/redexgen/X/3i;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/3i;->A03:I

    const/4 v0, -0x1

    if-eq v1, v0, :cond_1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/oJ;->A01:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v0, v2

    .line 102187
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x38d1b717    # 1.0E-4f

    cmpl-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/oJ;->A00:F

    sub-float/2addr v0, v2

    .line 102188
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v1

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oJ;->A08:Lcom/facebook/ads/redexgen/X/3i;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/3i;->A03:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oJ;->A07:Lcom/facebook/ads/redexgen/X/3i;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/3i;->A03:I

    if-eq v1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 102189
    :goto_0
    return v0

    .line 102190
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final AAP()Z
    .locals 1

    .line 102191
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/oJ;->A0D:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oJ;->A09:Lcom/facebook/ads/redexgen/X/9Y;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oJ;->A09:Lcom/facebook/ads/redexgen/X/9Y;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9Y;->A0H()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final AHG()V
    .locals 1

    .line 102192
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oJ;->A09:Lcom/facebook/ads/redexgen/X/9Y;

    if-eqz v0, :cond_0

    .line 102193
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oJ;->A09:Lcom/facebook/ads/redexgen/X/9Y;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9Y;->A0K()V

    .line 102194
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/oJ;->A0D:Z

    .line 102195
    return-void
.end method

.method public final AHH(Ljava/nio/ByteBuffer;)V
    .locals 7

    .line 102196
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    .line 102197
    return-void

    .line 102198
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oJ;->A09:Lcom/facebook/ads/redexgen/X/9Y;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/facebook/ads/redexgen/X/9Y;

    .line 102199
    .local v0, "sonic":Lcom/facebook/ads/redexgen/X/9Y;
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v5

    .line 102200
    .local v1, "shortBuffer":Ljava/nio/ShortBuffer;
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    .line 102201
    .local v2, "inputSize":I
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/oJ;->A03:J

    int-to-long v0, v4

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/oJ;->A03:J

    .line 102202
    invoke-virtual {v6, v5}, Lcom/facebook/ads/redexgen/X/9Y;->A0M(Ljava/nio/ShortBuffer;)V

    .line 102203
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/2addr v0, v4

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 102204
    return-void
.end method

.method public final flush()V
    .locals 7

    .line 102205
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/oJ;->AAL()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102206
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oJ;->A07:Lcom/facebook/ads/redexgen/X/3i;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/oJ;->A05:Lcom/facebook/ads/redexgen/X/3i;

    .line 102207
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oJ;->A08:Lcom/facebook/ads/redexgen/X/3i;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/oJ;->A06:Lcom/facebook/ads/redexgen/X/3i;

    .line 102208
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/oJ;->A0E:Z

    if-eqz v0, :cond_1

    .line 102209
    new-instance v1, Lcom/facebook/ads/redexgen/X/9Y;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oJ;->A05:Lcom/facebook/ads/redexgen/X/3i;

    iget v2, v0, Lcom/facebook/ads/redexgen/X/3i;->A03:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oJ;->A05:Lcom/facebook/ads/redexgen/X/3i;

    iget v3, v0, Lcom/facebook/ads/redexgen/X/3i;->A01:I

    iget v4, p0, Lcom/facebook/ads/redexgen/X/oJ;->A01:F

    iget v5, p0, Lcom/facebook/ads/redexgen/X/oJ;->A00:F

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oJ;->A06:Lcom/facebook/ads/redexgen/X/3i;

    iget v6, v0, Lcom/facebook/ads/redexgen/X/3i;->A03:I

    invoke-direct/range {v1 .. v6}, Lcom/facebook/ads/redexgen/X/9Y;-><init>(IIFFI)V

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/oJ;->A09:Lcom/facebook/ads/redexgen/X/9Y;

    .line 102210
    :cond_0
    :goto_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/3k;->A00:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/oJ;->A0B:Ljava/nio/ByteBuffer;

    .line 102211
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/oJ;->A03:J

    .line 102212
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/oJ;->A04:J

    .line 102213
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/oJ;->A0D:Z

    .line 102214
    return-void

    .line 102215
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oJ;->A09:Lcom/facebook/ads/redexgen/X/9Y;

    if-eqz v0, :cond_0

    .line 102216
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oJ;->A09:Lcom/facebook/ads/redexgen/X/9Y;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9Y;->A0J()V

    goto :goto_0
.end method
