.class final Lcom/google/android/gms/internal/ads/zzeku;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdmc;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzekj;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzfir;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzekv;Lcom/google/android/gms/internal/ads/zzekj;Lcom/google/android/gms/internal/ads/zzfir;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeku;->zza:Lcom/google/android/gms/internal/ads/zzekj;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzeku;->zzb:Lcom/google/android/gms/internal/ads/zzfir;

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(ZLandroid/content/Context;Lcom/google/android/gms/internal/ads/zzdbs;)V
    .locals 0

    .line 1
    :try_start_0
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzeku;->zza:Lcom/google/android/gms/internal/ads/zzekj;

    iget-object p3, p3, Lcom/google/android/gms/internal/ads/zzekj;->zzb:Ljava/lang/Object;

    check-cast p3, Lcom/google/android/gms/internal/ads/zzfki;

    invoke-virtual {p3, p1}, Lcom/google/android/gms/internal/ads/zzfki;->zzs(Z)V

    .line 2
    invoke-virtual {p3, p2}, Lcom/google/android/gms/internal/ads/zzfki;->zzz(Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzfjr; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1
    new-instance p2, Lcom/google/android/gms/internal/ads/zzdmb;

    .line 3
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzdmb;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final zzb()Lcom/google/android/gms/internal/ads/zzfir;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeku;->zzb:Lcom/google/android/gms/internal/ads/zzfir;

    return-object v0
.end method
