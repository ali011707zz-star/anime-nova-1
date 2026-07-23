.class final Lcom/google/android/gms/internal/ads/zzgte;
.super Lcom/google/android/gms/internal/ads/zzgti;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzgtm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzgtm;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgte;->zza:Lcom/google/android/gms/internal/ads/zzgtm;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzgti;-><init>(Lcom/google/android/gms/internal/ads/zzgtm;[B)V

    return-void
.end method


# virtual methods
.method final zza(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgte;->zza:Lcom/google/android/gms/internal/ads/zzgtm;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgtm;->zzo(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
