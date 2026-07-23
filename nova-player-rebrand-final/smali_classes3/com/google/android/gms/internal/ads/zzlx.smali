.class final Lcom/google/android/gms/internal/ads/zzlx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzwv;
.implements Lcom/google/android/gms/internal/ads/zztk;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzmc;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzlz;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzmc;Lcom/google/android/gms/internal/ads/zzlz;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzlx;->zza:Lcom/google/android/gms/internal/ads/zzmc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzlx;->zzb:Lcom/google/android/gms/internal/ads/zzlz;

    return-void
.end method

.method private final zzf(ILcom/google/android/gms/internal/ads/zzwk;)Landroid/util/Pair;
    .locals 6

    const/4 p1, 0x0

    if-eqz p2, :cond_3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzlx;->zzb:Lcom/google/android/gms/internal/ads/zzlz;

    const/4 v1, 0x0

    :goto_0
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzlz;->zzc:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 2
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzwk;

    iget-wide v2, v2, Lcom/google/android/gms/internal/ads/zzwk;->zzd:J

    iget-wide v4, p2, Lcom/google/android/gms/internal/ads/zzwk;->zzd:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-object v1, p2, Lcom/google/android/gms/internal/ads/zzwk;->zza:Ljava/lang/Object;

    .line 3
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzlz;->zzb:Ljava/lang/Object;

    sget v2, Lcom/google/android/gms/internal/ads/zzmj;->$r8$clinit:I

    .line 4
    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 5
    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzwk;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzwk;

    move-result-object p2

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move-object p2, p1

    :goto_1
    if-nez p2, :cond_2

    return-object p1

    :cond_2
    move-object p1, p2

    :cond_3
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzlx;->zzb:Lcom/google/android/gms/internal/ads/zzlz;

    .line 6
    iget p2, p2, Lcom/google/android/gms/internal/ads/zzlz;->zzd:I

    .line 7
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p2, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final zzai(ILcom/google/android/gms/internal/ads/zzwk;Lcom/google/android/gms/internal/ads/zzwb;Lcom/google/android/gms/internal/ads/zzwg;I)V
    .locals 6

    const/4 p1, 0x0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzlx;->zzf(ILcom/google/android/gms/internal/ads/zzwk;)Landroid/util/Pair;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzlx;->zza:Lcom/google/android/gms/internal/ads/zzmc;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzlw;

    move-object v1, p0

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzlw;-><init>(Lcom/google/android/gms/internal/ads/zzlx;Landroid/util/Pair;Lcom/google/android/gms/internal/ads/zzwb;Lcom/google/android/gms/internal/ads/zzwg;I)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzmc;->zzk()Lcom/google/android/gms/internal/ads/zzdx;

    move-result-object p1

    .line 2
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzdx;->zzn(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final zzaj(ILcom/google/android/gms/internal/ads/zzwk;Lcom/google/android/gms/internal/ads/zzwb;Lcom/google/android/gms/internal/ads/zzwg;)V
    .locals 1

    const/4 p1, 0x0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzlx;->zzf(ILcom/google/android/gms/internal/ads/zzwk;)Landroid/util/Pair;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzlx;->zza:Lcom/google/android/gms/internal/ads/zzmc;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzls;

    invoke-direct {v0, p0, p1, p3, p4}, Lcom/google/android/gms/internal/ads/zzls;-><init>(Lcom/google/android/gms/internal/ads/zzlx;Landroid/util/Pair;Lcom/google/android/gms/internal/ads/zzwb;Lcom/google/android/gms/internal/ads/zzwg;)V

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzmc;->zzk()Lcom/google/android/gms/internal/ads/zzdx;

    move-result-object p1

    .line 2
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzdx;->zzn(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final zzak(ILcom/google/android/gms/internal/ads/zzwk;Lcom/google/android/gms/internal/ads/zzwb;Lcom/google/android/gms/internal/ads/zzwg;)V
    .locals 1

    const/4 p1, 0x0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzlx;->zzf(ILcom/google/android/gms/internal/ads/zzwk;)Landroid/util/Pair;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzlx;->zza:Lcom/google/android/gms/internal/ads/zzmc;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzlt;

    invoke-direct {v0, p0, p1, p3, p4}, Lcom/google/android/gms/internal/ads/zzlt;-><init>(Lcom/google/android/gms/internal/ads/zzlx;Landroid/util/Pair;Lcom/google/android/gms/internal/ads/zzwb;Lcom/google/android/gms/internal/ads/zzwg;)V

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzmc;->zzk()Lcom/google/android/gms/internal/ads/zzdx;

    move-result-object p1

    .line 2
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzdx;->zzn(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final zzal(ILcom/google/android/gms/internal/ads/zzwk;Lcom/google/android/gms/internal/ads/zzwb;Lcom/google/android/gms/internal/ads/zzwg;Ljava/io/IOException;Z)V
    .locals 7

    const/4 p1, 0x0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzlx;->zzf(ILcom/google/android/gms/internal/ads/zzwk;)Landroid/util/Pair;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzlx;->zza:Lcom/google/android/gms/internal/ads/zzmc;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzlu;

    move-object v1, p0

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzlu;-><init>(Lcom/google/android/gms/internal/ads/zzlx;Landroid/util/Pair;Lcom/google/android/gms/internal/ads/zzwb;Lcom/google/android/gms/internal/ads/zzwg;Ljava/io/IOException;Z)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzmc;->zzk()Lcom/google/android/gms/internal/ads/zzdx;

    move-result-object p1

    .line 2
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzdx;->zzn(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final zzam(ILcom/google/android/gms/internal/ads/zzwk;Lcom/google/android/gms/internal/ads/zzwg;)V
    .locals 1

    const/4 p1, 0x0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzlx;->zzf(ILcom/google/android/gms/internal/ads/zzwk;)Landroid/util/Pair;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzlx;->zza:Lcom/google/android/gms/internal/ads/zzmc;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzlv;

    invoke-direct {v0, p0, p1, p3}, Lcom/google/android/gms/internal/ads/zzlv;-><init>(Lcom/google/android/gms/internal/ads/zzlx;Landroid/util/Pair;Lcom/google/android/gms/internal/ads/zzwg;)V

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzmc;->zzk()Lcom/google/android/gms/internal/ads/zzdx;

    move-result-object p1

    .line 2
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzdx;->zzn(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
