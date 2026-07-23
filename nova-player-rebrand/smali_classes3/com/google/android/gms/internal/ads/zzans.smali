.class final Lcom/google/android/gms/internal/ads/zzans;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# static fields
.field private static final zza:Ljava/util/Comparator;


# instance fields
.field private final zzb:Lcom/google/android/gms/internal/ads/zzant;

.field private final zzc:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzanr;->zza:Lcom/google/android/gms/internal/ads/zzanr;

    sput-object v0, Lcom/google/android/gms/internal/ads/zzans;->zza:Ljava/util/Comparator;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzant;I[B)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzans;->zzb:Lcom/google/android/gms/internal/ads/zzant;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzans;->zzc:I

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzans;Lcom/google/android/gms/internal/ads/zzans;)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzans;->zzb:Lcom/google/android/gms/internal/ads/zzant;

    iget p0, p0, Lcom/google/android/gms/internal/ads/zzant;->zzb:I

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzans;->zzb:Lcom/google/android/gms/internal/ads/zzant;

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzant;->zzb:I

    invoke-static {p0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0
.end method

.method static synthetic zzb()Ljava/util/Comparator;
    .locals 1

    .line 0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzans;->zza:Ljava/util/Comparator;

    return-object v0
.end method


# virtual methods
.method final synthetic zzc()Lcom/google/android/gms/internal/ads/zzant;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzans;->zzb:Lcom/google/android/gms/internal/ads/zzant;

    return-object v0
.end method

.method final synthetic zzd()I
    .locals 1

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzans;->zzc:I

    return v0
.end method
