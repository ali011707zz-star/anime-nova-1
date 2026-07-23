.class final synthetic Lcom/google/android/gms/internal/ads/zzgkm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgqt;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzgkn;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzgkn;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgkm;->zza:Lcom/google/android/gms/internal/ads/zzgkn;

    return-void
.end method


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgkm;->zza:Lcom/google/android/gms/internal/ads/zzgkn;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbch;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgkn;->zzb(Lcom/google/android/gms/internal/ads/zzbch;)I

    new-instance p1, Ljava/lang/Integer;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/lang/Integer;-><init>(I)V

    return-object p1
.end method
