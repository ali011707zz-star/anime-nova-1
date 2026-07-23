.class public final Lcom/google/android/gms/internal/ads/zzay;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzs;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzs;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzay;->zza:Lcom/google/android/gms/internal/ads/zzs;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1
    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzay;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzay;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzay;->zza:Lcom/google/android/gms/internal/ads/zzs;

    .line 2
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzay;->zza:Lcom/google/android/gms/internal/ads/zzs;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzs;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzay;->zza:Lcom/google/android/gms/internal/ads/zzs;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzs;->hashCode()I

    move-result v0

    return v0
.end method
