.class public final Lcom/google/android/gms/internal/ads/zzftg;
.super Lcom/google/android/gms/internal/ads/zzftj;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/ads/zzftg;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzftg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzftg;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzftg;->zzb:Lcom/google/android/gms/internal/ads/zzftg;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzftj;-><init>()V

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/ads/zzftg;
    .locals 1

    .line 0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzftg;->zzb:Lcom/google/android/gms/internal/ads/zzftg;

    return-object v0
.end method


# virtual methods
.method public final zzb()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfth;->zza()Lcom/google/android/gms/internal/ads/zzfth;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfth;->zzf()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzfsn;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfsn;->zzi()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Landroid/view/View;->hasWindowFocus()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final zzc(Z)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfth;->zza()Lcom/google/android/gms/internal/ads/zzfth;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfth;->zze()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzfsn;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfsn;->zzg()Lcom/google/android/gms/internal/ads/zzftx;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzftx;->zzf(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method
