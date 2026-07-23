.class public final Lcom/google/ads/interactivemedia/v3/internal/zzkg;
.super Lcom/google/ads/interactivemedia/v3/internal/zzkj;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# instance fields
.field private final zzh:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/zziv;Ljava/lang/String;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/internal/zzad;IILandroid/view/View;)V
    .locals 7

    .line 1
    const-string v3, "sEqRe1gPhw/PwjhUj/qVAEUjKSVJDrXHsmrE44pcjTE="

    const/16 v6, 0x39

    const-string v2, "UGogIgDf9q+IGA3QKHqW/91b9ZzRTVJqtfmUoLBkD310fwrDg1hJZvDQk8/WK1MH"

    move-object v0, p0

    move-object v1, p1

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/ads/interactivemedia/v3/internal/zzkj;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zziv;Ljava/lang/String;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/internal/zzad;II)V

    iput-object p7, v0, Lcom/google/ads/interactivemedia/v3/internal/zzkg;->zzh:Landroid/view/View;

    return-void
.end method


# virtual methods
.method protected final zza()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzkg;->zzh:Landroid/view/View;

    if-eqz v0, :cond_2

    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/zzlv;->zzB:Lcom/google/ads/interactivemedia/v3/internal/zzlm;

    .line 2
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzld;->zzc()Lcom/google/ads/interactivemedia/v3/internal/zzlt;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzlt;->zzc(Lcom/google/ads/interactivemedia/v3/internal/zzlm;)Ljava/lang/Object;

    move-result-object v1

    .line 1
    check-cast v1, Ljava/lang/Boolean;

    sget-object v2, Lcom/google/ads/interactivemedia/v3/internal/zzlv;->zzE:Lcom/google/ads/interactivemedia/v3/internal/zzlm;

    .line 3
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzld;->zzc()Lcom/google/ads/interactivemedia/v3/internal/zzlt;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/ads/interactivemedia/v3/internal/zzlt;->zzc(Lcom/google/ads/interactivemedia/v3/internal/zzlm;)Ljava/lang/Object;

    move-result-object v2

    .line 4
    check-cast v2, Ljava/lang/Boolean;

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzkj;->zza:Lcom/google/ads/interactivemedia/v3/internal/zziv;

    .line 5
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/zziv;->zzb()Landroid/content/Context;

    move-result-object v3

    .line 6
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/zzkj;->zze:Ljava/lang/reflect/Method;

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    aput-object v3, v5, v0

    const/4 v0, 0x2

    aput-object v1, v5, v0

    const/4 v0, 0x3

    aput-object v2, v5, v0

    const/4 v0, 0x0

    .line 7
    invoke-virtual {v4, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 8
    new-instance v3, Lcom/google/ads/interactivemedia/v3/internal/zziz;

    invoke-direct {v3, v0}, Lcom/google/ads/interactivemedia/v3/internal/zziz;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzaz;->zza()Lcom/google/ads/interactivemedia/v3/internal/zzay;

    move-result-object v0

    iget-object v4, v3, Lcom/google/ads/interactivemedia/v3/internal/zziz;->zza:Ljava/lang/Long;

    .line 10
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/google/ads/interactivemedia/v3/internal/zzay;->zzb(J)Lcom/google/ads/interactivemedia/v3/internal/zzay;

    iget-object v4, v3, Lcom/google/ads/interactivemedia/v3/internal/zziz;->zzb:Ljava/lang/Long;

    .line 11
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/google/ads/interactivemedia/v3/internal/zzay;->zzc(J)Lcom/google/ads/interactivemedia/v3/internal/zzay;

    iget-object v4, v3, Lcom/google/ads/interactivemedia/v3/internal/zziz;->zzc:Ljava/lang/Long;

    .line 12
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/google/ads/interactivemedia/v3/internal/zzay;->zzd(J)Lcom/google/ads/interactivemedia/v3/internal/zzay;

    .line 13
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v3, Lcom/google/ads/interactivemedia/v3/internal/zziz;->zze:Ljava/lang/Long;

    .line 14
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/google/ads/interactivemedia/v3/internal/zzay;->zza(J)Lcom/google/ads/interactivemedia/v3/internal/zzay;

    .line 15
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v3, Lcom/google/ads/interactivemedia/v3/internal/zziz;->zzd:Ljava/lang/Long;

    .line 16
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/zzay;->zze(J)Lcom/google/ads/interactivemedia/v3/internal/zzay;

    :cond_1
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzkj;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zzad;

    .line 17
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzaco;->zzal()Lcom/google/ads/interactivemedia/v3/internal/zzacs;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/zzaz;

    invoke-virtual {v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzad;->zzL(Lcom/google/ads/interactivemedia/v3/internal/zzaz;)Lcom/google/ads/interactivemedia/v3/internal/zzad;

    :cond_2
    return-void
.end method
