.class public final Lcom/facebook/ads/redexgen/X/Er;
.super Lcom/facebook/ads/redexgen/X/Wc;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Ek;->AGd(Lcom/facebook/ads/redexgen/X/fm;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:I

.field public final synthetic A01:I

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/Ek;

.field public final synthetic A03:Lcom/facebook/ads/redexgen/X/fm;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Ek;Lcom/facebook/ads/redexgen/X/fm;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 35176
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Er;->A02:Lcom/facebook/ads/redexgen/X/Ek;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Er;->A03:Lcom/facebook/ads/redexgen/X/fm;

    iput p3, p0, Lcom/facebook/ads/redexgen/X/Er;->A00:I

    iput p4, p0, Lcom/facebook/ads/redexgen/X/Er;->A01:I

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Wc;-><init>()V

    return-void
.end method


# virtual methods
.method public final A07()V
    .locals 4

    .line 35177
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Er;->A03:Lcom/facebook/ads/redexgen/X/fm;

    sget-object v0, Lcom/facebook/ads/redexgen/X/fm;->A07:Lcom/facebook/ads/redexgen/X/fm;

    if-ne v1, v0, :cond_1

    .line 35178
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Er;->A02:Lcom/facebook/ads/redexgen/X/Ek;

    sget-object v0, Lcom/facebook/ads/redexgen/X/VH;->A0y:Lcom/facebook/ads/redexgen/X/VH;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Ek;->A0P(Lcom/facebook/ads/redexgen/X/Ek;Lcom/facebook/ads/redexgen/X/VH;)V

    .line 35179
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Er;->A02:Lcom/facebook/ads/redexgen/X/Ek;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ek;->A09(Lcom/facebook/ads/redexgen/X/Ek;)Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Lt;->A3j()V

    .line 35180
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Er;->A02:Lcom/facebook/ads/redexgen/X/Ek;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ek;->A0A(Lcom/facebook/ads/redexgen/X/Ek;)Lcom/facebook/ads/redexgen/X/UM;

    move-result-object v1

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Ek;->A0D()Lcom/facebook/ads/redexgen/X/E1;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/UM;->A02(Lcom/facebook/ads/redexgen/X/UL;)V

    .line 35181
    :cond_0
    :goto_0
    return-void

    .line 35182
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Er;->A03:Lcom/facebook/ads/redexgen/X/fm;

    sget-object v0, Lcom/facebook/ads/redexgen/X/fm;->A03:Lcom/facebook/ads/redexgen/X/fm;

    const/4 v3, 0x1

    if-ne v1, v0, :cond_2

    .line 35183
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Er;->A02:Lcom/facebook/ads/redexgen/X/Ek;

    sget-object v0, Lcom/facebook/ads/redexgen/X/VH;->A0t:Lcom/facebook/ads/redexgen/X/VH;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Ek;->A0P(Lcom/facebook/ads/redexgen/X/Ek;Lcom/facebook/ads/redexgen/X/VH;)V

    .line 35184
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Er;->A02:Lcom/facebook/ads/redexgen/X/Ek;

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/Ek;->A0V(Lcom/facebook/ads/redexgen/X/Ek;Z)Z

    .line 35185
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Er;->A02:Lcom/facebook/ads/redexgen/X/Ek;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ek;->A0A(Lcom/facebook/ads/redexgen/X/Ek;)Lcom/facebook/ads/redexgen/X/UM;

    move-result-object v1

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Ek;->A0B()Lcom/facebook/ads/redexgen/X/E9;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/UM;->A02(Lcom/facebook/ads/redexgen/X/UL;)V

    .line 35186
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Er;->A02:Lcom/facebook/ads/redexgen/X/Ek;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Er;->A00:I

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Ek;->A0O(Lcom/facebook/ads/redexgen/X/Ek;I)V

    goto :goto_0

    .line 35187
    :cond_2
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Er;->A03:Lcom/facebook/ads/redexgen/X/fm;

    sget-object v0, Lcom/facebook/ads/redexgen/X/fm;->A06:Lcom/facebook/ads/redexgen/X/fm;

    const/4 v2, 0x0

    if-ne v1, v0, :cond_3

    .line 35188
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Er;->A02:Lcom/facebook/ads/redexgen/X/Ek;

    sget-object v0, Lcom/facebook/ads/redexgen/X/VH;->A0s:Lcom/facebook/ads/redexgen/X/VH;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Ek;->A0P(Lcom/facebook/ads/redexgen/X/Ek;Lcom/facebook/ads/redexgen/X/VH;)V

    .line 35189
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Er;->A02:Lcom/facebook/ads/redexgen/X/Ek;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ek;->A09(Lcom/facebook/ads/redexgen/X/Ek;)Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Lt;->A3b()V

    .line 35190
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Er;->A02:Lcom/facebook/ads/redexgen/X/Ek;

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/Ek;->A0V(Lcom/facebook/ads/redexgen/X/Ek;Z)Z

    .line 35191
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Er;->A02:Lcom/facebook/ads/redexgen/X/Ek;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ek;->A08(Lcom/facebook/ads/redexgen/X/Ek;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 35192
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Er;->A02:Lcom/facebook/ads/redexgen/X/Ek;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ek;->A0A(Lcom/facebook/ads/redexgen/X/Ek;)Lcom/facebook/ads/redexgen/X/UM;

    move-result-object v3

    iget v2, p0, Lcom/facebook/ads/redexgen/X/Er;->A01:I

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Er;->A01:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/4K;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/4K;-><init>(II)V

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/UM;->A02(Lcom/facebook/ads/redexgen/X/UL;)V

    .line 35193
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Er;->A02:Lcom/facebook/ads/redexgen/X/Ek;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Er;->A01:I

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Ek;->A0O(Lcom/facebook/ads/redexgen/X/Ek;I)V

    goto :goto_0

    .line 35194
    :cond_3
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Er;->A03:Lcom/facebook/ads/redexgen/X/fm;

    sget-object v0, Lcom/facebook/ads/redexgen/X/fm;->A0A:Lcom/facebook/ads/redexgen/X/fm;

    if-ne v1, v0, :cond_5

    .line 35195
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Er;->A02:Lcom/facebook/ads/redexgen/X/Ek;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ek;->A09(Lcom/facebook/ads/redexgen/X/Ek;)Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Up;->A1z(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 35196
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Er;->A02:Lcom/facebook/ads/redexgen/X/Ek;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ek;->A09(Lcom/facebook/ads/redexgen/X/Ek;)Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->A0B()Lcom/facebook/ads/redexgen/X/VM;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/VM;->AGc()V

    .line 35197
    :cond_4
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Er;->A02:Lcom/facebook/ads/redexgen/X/Ek;

    sget-object v0, Lcom/facebook/ads/redexgen/X/VH;->A0w:Lcom/facebook/ads/redexgen/X/VH;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Ek;->A0P(Lcom/facebook/ads/redexgen/X/Ek;Lcom/facebook/ads/redexgen/X/VH;)V

    .line 35198
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Er;->A02:Lcom/facebook/ads/redexgen/X/Ek;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ek;->A09(Lcom/facebook/ads/redexgen/X/Ek;)Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Lt;->A3q()V

    .line 35199
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Er;->A02:Lcom/facebook/ads/redexgen/X/Ek;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ek;->A0A(Lcom/facebook/ads/redexgen/X/Ek;)Lcom/facebook/ads/redexgen/X/UM;

    move-result-object v1

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Ek;->A0C()Lcom/facebook/ads/redexgen/X/E3;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/UM;->A02(Lcom/facebook/ads/redexgen/X/UL;)V

    .line 35200
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Er;->A02:Lcom/facebook/ads/redexgen/X/Ek;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ek;->A08(Lcom/facebook/ads/redexgen/X/Ek;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 35201
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Er;->A02:Lcom/facebook/ads/redexgen/X/Ek;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ek;->A0N(Lcom/facebook/ads/redexgen/X/Ek;)V

    goto/16 :goto_0

    .line 35202
    :cond_5
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Er;->A03:Lcom/facebook/ads/redexgen/X/fm;

    sget-object v0, Lcom/facebook/ads/redexgen/X/fm;->A05:Lcom/facebook/ads/redexgen/X/fm;

    if-ne v1, v0, :cond_6

    .line 35203
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Er;->A02:Lcom/facebook/ads/redexgen/X/Ek;

    sget-object v0, Lcom/facebook/ads/redexgen/X/VH;->A0v:Lcom/facebook/ads/redexgen/X/VH;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Ek;->A0P(Lcom/facebook/ads/redexgen/X/Ek;Lcom/facebook/ads/redexgen/X/VH;)V

    .line 35204
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Er;->A02:Lcom/facebook/ads/redexgen/X/Ek;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ek;->A09(Lcom/facebook/ads/redexgen/X/Ek;)Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Lt;->A3f()V

    .line 35205
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Er;->A02:Lcom/facebook/ads/redexgen/X/Ek;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ek;->A0A(Lcom/facebook/ads/redexgen/X/Ek;)Lcom/facebook/ads/redexgen/X/UM;

    move-result-object v3

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Er;->A00:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/4B;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/4B;-><init>(I)V

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/UM;->A02(Lcom/facebook/ads/redexgen/X/UL;)V

    .line 35206
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Er;->A02:Lcom/facebook/ads/redexgen/X/Ek;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ek;->A08(Lcom/facebook/ads/redexgen/X/Ek;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 35207
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Er;->A02:Lcom/facebook/ads/redexgen/X/Ek;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Er;->A00:I

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Ek;->A0O(Lcom/facebook/ads/redexgen/X/Ek;I)V

    goto/16 :goto_0

    .line 35208
    :cond_6
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Er;->A03:Lcom/facebook/ads/redexgen/X/fm;

    sget-object v0, Lcom/facebook/ads/redexgen/X/fm;->A04:Lcom/facebook/ads/redexgen/X/fm;

    if-ne v1, v0, :cond_7

    .line 35209
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Er;->A02:Lcom/facebook/ads/redexgen/X/Ek;

    sget-object v0, Lcom/facebook/ads/redexgen/X/VH;->A0u:Lcom/facebook/ads/redexgen/X/VH;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Ek;->A0P(Lcom/facebook/ads/redexgen/X/Ek;Lcom/facebook/ads/redexgen/X/VH;)V

    .line 35210
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Er;->A02:Lcom/facebook/ads/redexgen/X/Ek;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ek;->A09(Lcom/facebook/ads/redexgen/X/Ek;)Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Lt;->A3c()V

    .line 35211
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Er;->A02:Lcom/facebook/ads/redexgen/X/Ek;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ek;->A0A(Lcom/facebook/ads/redexgen/X/Ek;)Lcom/facebook/ads/redexgen/X/UM;

    move-result-object v1

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Ek;->A0F()Lcom/facebook/ads/redexgen/X/Dv;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/UM;->A02(Lcom/facebook/ads/redexgen/X/UL;)V

    .line 35212
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Er;->A02:Lcom/facebook/ads/redexgen/X/Ek;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ek;->A08(Lcom/facebook/ads/redexgen/X/Ek;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 35213
    :cond_7
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Er;->A03:Lcom/facebook/ads/redexgen/X/fm;

    sget-object v0, Lcom/facebook/ads/redexgen/X/fm;->A09:Lcom/facebook/ads/redexgen/X/fm;

    if-ne v1, v0, :cond_0

    .line 35214
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Er;->A02:Lcom/facebook/ads/redexgen/X/Ek;

    sget-object v0, Lcom/facebook/ads/redexgen/X/VH;->A0s:Lcom/facebook/ads/redexgen/X/VH;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Ek;->A0P(Lcom/facebook/ads/redexgen/X/Ek;Lcom/facebook/ads/redexgen/X/VH;)V

    .line 35215
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Er;->A02:Lcom/facebook/ads/redexgen/X/Ek;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ek;->A09(Lcom/facebook/ads/redexgen/X/Ek;)Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Lt;->A3l()V

    .line 35216
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Er;->A02:Lcom/facebook/ads/redexgen/X/Ek;

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/Ek;->A0V(Lcom/facebook/ads/redexgen/X/Ek;Z)Z

    .line 35217
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Er;->A02:Lcom/facebook/ads/redexgen/X/Ek;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ek;->A08(Lcom/facebook/ads/redexgen/X/Ek;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 35218
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Er;->A02:Lcom/facebook/ads/redexgen/X/Ek;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ek;->A0A(Lcom/facebook/ads/redexgen/X/Ek;)Lcom/facebook/ads/redexgen/X/UM;

    move-result-object v3

    iget v2, p0, Lcom/facebook/ads/redexgen/X/Er;->A00:I

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Er;->A01:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/4K;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/4K;-><init>(II)V

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/UM;->A02(Lcom/facebook/ads/redexgen/X/UL;)V

    .line 35219
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Er;->A02:Lcom/facebook/ads/redexgen/X/Ek;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Er;->A00:I

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Ek;->A0O(Lcom/facebook/ads/redexgen/X/Ek;I)V

    goto/16 :goto_0
.end method
