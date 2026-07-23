.class final Lcom/google/android/gms/internal/ads/zzgbs;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzghs;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzgbl;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzgbl;[B)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgbs;->zza:Lcom/google/android/gms/internal/ads/zzgbl;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzght;
    .locals 2

    .line 0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgbt;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgbs;->zza:Lcom/google/android/gms/internal/ads/zzgbl;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzgbt;-><init>(Lcom/google/android/gms/internal/ads/zzgbl;)V

    return-object v0
.end method
