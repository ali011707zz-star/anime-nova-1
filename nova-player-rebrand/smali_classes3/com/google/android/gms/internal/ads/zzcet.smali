.class final Lcom/google/android/gms/internal/ads/zzcet;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgzl;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzcer;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzcep;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzceu;Lcom/google/android/gms/internal/ads/zzcer;Lcom/google/android/gms/internal/ads/zzcep;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcet;->zza:Lcom/google/android/gms/internal/ads/zzcer;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcet;->zzb:Lcom/google/android/gms/internal/ads/zzcep;

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcet;->zzb:Lcom/google/android/gms/internal/ads/zzcep;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcep;->zza()V

    return-void
.end method

.method public final zzb(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcet;->zza:Lcom/google/android/gms/internal/ads/zzcer;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzcer;->zza(Ljava/lang/Object;)V

    return-void
.end method
