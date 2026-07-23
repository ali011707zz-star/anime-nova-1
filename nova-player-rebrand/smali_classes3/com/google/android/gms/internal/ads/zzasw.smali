.class public final Lcom/google/android/gms/internal/ads/zzasw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field private final zza:I

.field private final zzb:Ljava/util/List;

.field private final zzc:I

.field private final zzd:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(ILjava/util/List;ILjava/io/InputStream;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzasw;->zza:I

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzasw;->zzb:Ljava/util/List;

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzasw;->zzc:I

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzasw;->zzd:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method public final zza()I
    .locals 1

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzasw;->zza:I

    return v0
.end method

.method public final zzb()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzasw;->zzb:Ljava/util/List;

    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final zzc()I
    .locals 1

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzasw;->zzc:I

    return v0
.end method

.method public final zzd()Ljava/io/InputStream;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzasw;->zzd:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
