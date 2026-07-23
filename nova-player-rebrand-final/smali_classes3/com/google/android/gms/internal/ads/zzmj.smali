.class final Lcom/google/android/gms/internal/ads/zzmj;
.super Lcom/google/android/gms/internal/ads/zzii;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field private final zzc:I

.field private final zzd:I

.field private final zze:[I

.field private final zzf:[I

.field private final zzg:[Lcom/google/android/gms/internal/ads/zzbf;

.field private final zzh:[Ljava/lang/Object;

.field private final zzi:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Ljava/util/Collection;Lcom/google/android/gms/internal/ads/zzyf;)V
    .locals 6

    .line 1
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/gms/internal/ads/zzbf;

    .line 2
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/zzlr;

    add-int/lit8 v5, v3, 0x1

    .line 3
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzlr;->zzb()Lcom/google/android/gms/internal/ads/zzbf;

    move-result-object v4

    aput-object v4, v0, v3

    move v3, v5

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/Object;

    .line 5
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzlr;

    add-int/lit8 v4, v2, 0x1

    .line 6
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzlr;->zza()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    move v2, v4

    goto :goto_1

    .line 7
    :cond_1
    invoke-direct {p0, v0, v1, p2}, Lcom/google/android/gms/internal/ads/zzmj;-><init>([Lcom/google/android/gms/internal/ads/zzbf;[Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzyf;)V

    return-void
.end method

.method private constructor <init>([Lcom/google/android/gms/internal/ads/zzbf;[Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzyf;)V
    .locals 6

    const/4 v0, 0x0

    .line 8
    invoke-direct {p0, v0, p3}, Lcom/google/android/gms/internal/ads/zzii;-><init>(ZLcom/google/android/gms/internal/ads/zzyf;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzmj;->zzg:[Lcom/google/android/gms/internal/ads/zzbf;

    array-length p3, p1

    new-array v1, p3, [I

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzmj;->zze:[I

    new-array p3, p3, [I

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzmj;->zzf:[I

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzmj;->zzh:[Ljava/lang/Object;

    new-instance p3, Ljava/util/HashMap;

    .line 9
    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzmj;->zzi:Ljava/util/HashMap;

    move p3, v0

    move v1, p3

    move v2, v1

    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_0

    .line 10
    aget-object v3, p1, v0

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzmj;->zzg:[Lcom/google/android/gms/internal/ads/zzbf;

    .line 11
    aput-object v3, v4, v2

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzmj;->zzf:[I

    .line 12
    aput p3, v4, v2

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzmj;->zze:[I

    .line 13
    aput v1, v4, v2

    .line 14
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzbf;->zza()I

    move-result v3

    add-int/2addr p3, v3

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzmj;->zzg:[Lcom/google/android/gms/internal/ads/zzbf;

    .line 15
    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzbf;->zzc()I

    move-result v3

    add-int/2addr v1, v3

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzmj;->zzi:Ljava/util/HashMap;

    .line 16
    aget-object v4, p2, v2

    add-int/lit8 v5, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    move v2, v5

    goto :goto_0

    :cond_0
    iput p3, p0, Lcom/google/android/gms/internal/ads/zzmj;->zzc:I

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzmj;->zzd:I

    return-void
.end method


# virtual methods
.method public final zza()I
    .locals 1

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzmj;->zzc:I

    return v0
.end method

.method public final zzc()I
    .locals 1

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzmj;->zzd:I

    return v0
.end method

.method protected final zzp(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzmj;->zze:[I

    add-int/lit8 p1, p1, 0x1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1, v1}, Lcom/google/android/gms/internal/ads/zzfj;->zzl([IIZZ)I

    move-result p1

    return p1
.end method

.method protected final zzq(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzmj;->zzf:[I

    add-int/lit8 p1, p1, 0x1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1, v1}, Lcom/google/android/gms/internal/ads/zzfj;->zzl([IIZZ)I

    move-result p1

    return p1
.end method

.method protected final zzr(Ljava/lang/Object;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzmj;->zzi:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_0

    const/4 p1, -0x1

    return p1

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method protected final zzs(I)Lcom/google/android/gms/internal/ads/zzbf;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzmj;->zzg:[Lcom/google/android/gms/internal/ads/zzbf;

    aget-object p1, v0, p1

    return-object p1
.end method

.method protected final zzt(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzmj;->zze:[I

    aget p1, v0, p1

    return p1
.end method

.method protected final zzu(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzmj;->zzf:[I

    aget p1, v0, p1

    return p1
.end method

.method protected final zzv(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzmj;->zzh:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1
.end method

.method final zzw()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzmj;->zzg:[Lcom/google/android/gms/internal/ads/zzbf;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final zzx(Lcom/google/android/gms/internal/ads/zzyf;)Lcom/google/android/gms/internal/ads/zzmj;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzmj;->zzg:[Lcom/google/android/gms/internal/ads/zzbf;

    array-length v1, v0

    new-array v1, v1, [Lcom/google/android/gms/internal/ads/zzbf;

    const/4 v2, 0x0

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    new-instance v3, Lcom/google/android/gms/internal/ads/zzmi;

    aget-object v4, v0, v2

    invoke-direct {v3, p0, v4}, Lcom/google/android/gms/internal/ads/zzmi;-><init>(Lcom/google/android/gms/internal/ads/zzmj;Lcom/google/android/gms/internal/ads/zzbf;)V

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzmj;->zzh:[Ljava/lang/Object;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzmj;

    .line 2
    invoke-direct {v2, v1, v0, p1}, Lcom/google/android/gms/internal/ads/zzmj;-><init>([Lcom/google/android/gms/internal/ads/zzbf;[Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzyf;)V

    return-object v2
.end method
