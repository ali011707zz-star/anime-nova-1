.class final Lcom/google/android/gms/internal/ads/zzbse;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcep;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzbsf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbsf;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbse;->zza:Lcom/google/android/gms/internal/ads/zzbsf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbse;->zza:Lcom/google/android/gms/internal/ads/zzbsf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbsf;->zzb()Lcom/google/android/gms/internal/ads/zzbsk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbsk;->zzb()V

    return-void
.end method
