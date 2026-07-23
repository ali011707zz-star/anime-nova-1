.class public final Lcom/google/ads/interactivemedia/v3/internal/zzdx;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private zza:Lcom/google/ads/interactivemedia/v3/internal/zzpl;

.field private zzb:Lcom/google/ads/interactivemedia/v3/internal/zzpl;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzpl;->zzf()Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzdx;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzpl;->zzf()Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzdx;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-nez p1, :cond_0

    .line 2
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzpl;->zzg(Ljava/lang/Object;)Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    move-result-object p1

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzdx;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 4
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzpl;->zzg(Ljava/lang/Object;)Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    move-result-object p1

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzdx;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final zza()Lcom/google/ads/interactivemedia/v3/internal/zzpl;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzdx;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    return-object v0
.end method

.method public final zzb()Lcom/google/ads/interactivemedia/v3/internal/zzqu;
    .locals 2

    .line 1
    sget v0, Lcom/google/ads/interactivemedia/v3/internal/zzqu;->$r8$clinit:I

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzqq;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzqq;-><init>()V

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzdx;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    .line 2
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/zzpl;->zza()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzdx;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    .line 3
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/zzpl;->zzb()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/MotionEvent;

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzqq;->zzb(Ljava/lang/Object;)Lcom/google/ads/interactivemedia/v3/internal/zzqq;

    :cond_0
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzdx;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    .line 4
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/zzpl;->zza()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzdx;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    .line 5
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/zzpl;->zzb()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/MotionEvent;

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzqq;->zzb(Ljava/lang/Object;)Lcom/google/ads/interactivemedia/v3/internal/zzqq;

    .line 6
    :cond_1
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzqq;->zzc()Lcom/google/ads/interactivemedia/v3/internal/zzqu;

    move-result-object v0

    return-object v0
.end method
