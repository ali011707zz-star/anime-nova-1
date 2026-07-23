.class final synthetic Lcom/google/android/gms/internal/ads/zzgig;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgqt;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzgmu;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzgmu;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgig;->zza:Lcom/google/android/gms/internal/ads/zzgmu;

    return-void
.end method


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgig;->zza:Lcom/google/android/gms/internal/ads/zzgmu;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgdu;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzgmu;->zza(Lcom/google/android/gms/internal/ads/zzgdu;)Z

    move-result p1

    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p1}, Ljava/lang/Boolean;-><init>(Z)V

    return-object v0
.end method
