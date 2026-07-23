.class final synthetic Lcom/google/android/gms/internal/ads/zzka;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdl;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzks;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzks;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzka;->zza:Lcom/google/android/gms/internal/ads/zzks;

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 0
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzka;->zza:Lcom/google/android/gms/internal/ads/zzks;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzks;->zzL(II)V

    return-void
.end method
