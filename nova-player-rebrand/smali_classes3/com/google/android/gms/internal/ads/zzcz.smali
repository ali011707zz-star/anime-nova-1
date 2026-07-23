.class public final Lcom/google/android/gms/internal/ads/zzcz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# static fields
.field public static final synthetic $r8$clinit:I

.field private static final zzb:Lcom/google/android/gms/internal/ads/zzgvz;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgvz;->zzb()Lcom/google/android/gms/internal/ads/zzgvz;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzcy;->zza:Lcom/google/android/gms/internal/ads/zzcy;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgvz;->zzd(Lcom/google/android/gms/internal/ads/zzgqt;)Lcom/google/android/gms/internal/ads/zzgvz;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzcz;->zzb:Lcom/google/android/gms/internal/ads/zzgvz;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcz;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzguf;->zzi()Lcom/google/android/gms/internal/ads/zzguf;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzcz;-><init>(Ljava/util/List;J)V

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfj;->zza:Ljava/lang/String;

    const/4 v0, 0x0

    const/16 v1, 0x24

    .line 4
    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    const/4 v0, 0x1

    .line 5
    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object p2, Lcom/google/android/gms/internal/ads/zzcz;->zzb:Lcom/google/android/gms/internal/ads/zzgvz;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzguf;->zzs(Ljava/util/Comparator;Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzguf;

    return-void
.end method
