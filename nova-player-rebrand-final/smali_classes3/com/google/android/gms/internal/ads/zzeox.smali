.class final Lcom/google/android/gms/internal/ads/zzeox;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdmc;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzekj;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzfir;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzeoz;Lcom/google/android/gms/internal/ads/zzekj;Lcom/google/android/gms/internal/ads/zzfir;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeox;->zza:Lcom/google/android/gms/internal/ads/zzekj;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzeox;->zzb:Lcom/google/android/gms/internal/ads/zzfir;

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(ZLandroid/content/Context;Lcom/google/android/gms/internal/ads/zzdbs;)V
    .locals 0

    .line 1
    :try_start_0
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzeox;->zza:Lcom/google/android/gms/internal/ads/zzekj;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzekj;->zzb:Ljava/lang/Object;

    check-cast p2, Lcom/google/android/gms/internal/ads/zzfki;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzfki;->zzs(Z)V

    .line 2
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzfki;->zzm()V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzfjr; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 3
    sget p2, Lcom/google/android/gms/ads/internal/util/zze;->$r8$clinit:I

    const-string p2, "Cannot show rewarded video."

    .line 4
    invoke-static {p2, p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p2, Lcom/google/android/gms/internal/ads/zzdmb;

    .line 5
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzdmb;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final zzb()Lcom/google/android/gms/internal/ads/zzfir;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeox;->zzb:Lcom/google/android/gms/internal/ads/zzfir;

    return-object v0
.end method
