.class final Lcom/google/android/gms/internal/ads/zzbtb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcep;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzcen;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzbsf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbtd;Lcom/google/android/gms/internal/ads/zzcen;Lcom/google/android/gms/internal/ads/zzbsf;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbtb;->zza:Lcom/google/android/gms/internal/ads/zzcen;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbtb;->zzb:Lcom/google/android/gms/internal/ads/zzbsf;

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 2

    .line 1
    const-string v0, "callJs > getEngine: Promise rejected"

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbso;

    const-string v1, "Unable to obtain a JavascriptEngine."

    .line 2
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzbso;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbtb;->zza:Lcom/google/android/gms/internal/ads/zzcen;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzcen;->zzd(Ljava/lang/Throwable;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbtb;->zzb:Lcom/google/android/gms/internal/ads/zzbsf;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbsf;->zza()V

    return-void
.end method
