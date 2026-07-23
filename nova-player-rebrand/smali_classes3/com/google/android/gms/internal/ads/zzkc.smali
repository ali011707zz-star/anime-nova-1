.class final synthetic Lcom/google/android/gms/internal/ads/zzkc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdy;


# instance fields
.field private final synthetic zza:I

.field private final synthetic zzb:I


# direct methods
.method synthetic constructor <init>(II)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzkc;->zza:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzkc;->zzb:I

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lcom/google/android/gms/internal/ads/zzaz;

    sget v0, Lcom/google/android/gms/internal/ads/zzks;->$r8$clinit:I

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzkc;->zza:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzkc;->zzb:I

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzaz;->zzu(II)V

    return-void
.end method
