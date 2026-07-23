.class public final Lcom/google/ads/interactivemedia/v3/internal/zzcb;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/zzce;


# static fields
.field private static final zza:Lcom/google/ads/interactivemedia/v3/internal/zzcb;


# instance fields
.field private zzb:Ljava/util/Date;

.field private zzc:Z

.field private final zzd:Lcom/google/ads/interactivemedia/v3/internal/zzcf;

.field private zze:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzcb;

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/zzcf;

    invoke-direct {v1}, Lcom/google/ads/interactivemedia/v3/internal/zzcf;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzcb;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzcf;)V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzcb;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzcb;

    return-void
.end method

.method private constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/zzcf;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzcb;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zzcf;

    return-void
.end method

.method public static zza()Lcom/google/ads/interactivemedia/v3/internal/zzcb;
    .locals 1

    .line 0
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzcb;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzcb;

    return-object v0
.end method


# virtual methods
.method public final zzb()Ljava/util/Date;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzcb;->zzb:Ljava/util/Date;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzc(Landroid/content/Context;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzcb;->zzc:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzcb;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zzcf;

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzcf;->zzd(Landroid/content/Context;)V

    .line 2
    invoke-virtual {v0, p0}, Lcom/google/ads/interactivemedia/v3/internal/zzcf;->zzg(Lcom/google/ads/interactivemedia/v3/internal/zzce;)V

    .line 3
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzcf;->zze()V

    iget-boolean p1, v0, Lcom/google/ads/interactivemedia/v3/internal/zzcf;->zza:Z

    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzcb;->zze:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzcb;->zzc:Z

    :cond_0
    return-void
.end method

.method public final zzd(Z)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzcb;->zze:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzcb;->zzb:Ljava/util/Date;

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v0, v1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzcb;->zzb:Ljava/util/Date;

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzcb;->zzc:Z

    if-eqz v0, :cond_1

    .line 3
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzcd;->zza()Lcom/google/ads/interactivemedia/v3/internal/zzcd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzcd;->zzf()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/interactivemedia/omid/library/adsession/zze;

    .line 4
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/omid/library/adsession/zze;->zzh()Lcom/google/ads/interactivemedia/v3/internal/zzct;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzcb;->zzb()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/zzct;->zzn(Ljava/util/Date;)V

    goto :goto_0

    .line 2
    :cond_1
    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzcb;->zze:Z

    return-void
.end method
