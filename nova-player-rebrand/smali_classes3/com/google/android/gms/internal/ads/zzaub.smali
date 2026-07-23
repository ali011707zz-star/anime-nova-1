.class public final Lcom/google/android/gms/internal/ads/zzaub;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field private final synthetic zza:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaub;->zza:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(I[I)Lcom/google/android/gms/internal/ads/zzaty;
    .locals 1

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaub;->zza:I

    if-eqz v0, :cond_0

    new-instance p1, Lcom/google/android/gms/internal/ads/zzatz;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzatz;-><init>()V

    return-object p1

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzauc;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzauc;-><init>(I[I)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzaua;

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzaua;-><init>(Lcom/google/android/gms/internal/ads/zzauc;)V

    return-object p1
.end method
