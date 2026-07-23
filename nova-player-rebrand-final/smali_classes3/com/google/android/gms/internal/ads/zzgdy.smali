.class final synthetic Lcom/google/android/gms/internal/ads/zzgdy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzgec;

.field private final synthetic zzb:I


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzgec;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgdy;->zza:Lcom/google/android/gms/internal/ads/zzgec;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzgdy;->zzb:I

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgdy;->zza:Lcom/google/android/gms/internal/ads/zzgec;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzgdy;->zzb:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgec;->zzc(I)Lcom/google/android/gms/internal/ads/zzgdv;

    move-result-object v0

    return-object v0
.end method
