.class public final LM;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/Boolean;

.field private static b:Ljava/lang/Boolean;


# instance fields
.field private c:Lbl;

.field private final d:Lah;

.field private final e:Lah;

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/Boolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v0, LM;->a:Ljava/lang/Boolean;

    new-instance v0, Ljava/lang/Boolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v0, LM;->b:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Lbl;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x8000

    iput v0, p0, LM;->f:I

    iput-object p1, p0, LM;->c:Lbl;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lbl;->a()Lah;

    move-result-object v0

    iput-object v0, p0, LM;->d:Lah;

    invoke-virtual {p1}, Lbl;->a()Lah;

    move-result-object v0

    iput-object v0, p0, LM;->e:Lah;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lah;

    invoke-direct {v0}, Lah;-><init>()V

    iput-object v0, p0, LM;->d:Lah;

    new-instance v0, Lah;

    invoke-direct {v0}, Lah;-><init>()V

    iput-object v0, p0, LM;->e:Lah;

    goto :goto_0
.end method

.method private a(I)I
    .locals 1

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    :cond_0
    iget-object v0, p0, LM;->d:Lah;

    invoke-virtual {v0, p1}, Lah;->a(I)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    instance-of v0, p0, Ljava/util/Vector;

    if-eqz v0, :cond_2

    check-cast p0, Ljava/util/Vector;

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static a(J)I
    .locals 5

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gez v0, :cond_1

    const/16 v0, 0xa

    :cond_0
    return v0

    :cond_1
    const/4 v0, 0x1

    move-wide v1, p0

    :goto_0
    const-wide/16 v3, 0x80

    cmp-long v3, v1, v3

    if-ltz v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    const/4 v3, 0x7

    shr-long/2addr v1, v3

    goto :goto_0
.end method

.method private a(Ljava/io/InputStream;I)I
    .locals 11

    iget-object v0, p0, LM;->d:Lah;

    invoke-virtual {v0}, Lah;->c()V

    iget-object v0, p0, LM;->e:Lah;

    invoke-virtual {v0}, Lah;->c()V

    move v0, p2

    :goto_0
    if-lez v0, :cond_9

    const/4 v1, 0x1

    invoke-static {p1, v1}, LM;->a(Ljava/io/InputStream;Z)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v3, v1, v3

    if-eqz v3, :cond_9

    invoke-static {v1, v2}, LM;->a(J)I

    move-result v3

    sub-int/2addr v0, v3

    long-to-int v3, v1

    and-int/lit8 v3, v3, 0x7

    const/4 v4, 0x4

    if-eq v3, v4, :cond_9

    const/4 v4, 0x3

    ushr-long/2addr v1, v4

    long-to-int v1, v1

    iget-object v2, p0, LM;->e:Lah;

    invoke-static {v3}, Lag;->a(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, Lah;->a(ILjava/lang/Object;)V

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown wire type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", reading garbage data?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    const/4 v2, 0x0

    invoke-static {p1, v2}, LM;->a(Ljava/io/InputStream;Z)J

    move-result-wide v2

    invoke-static {v2, v3}, LM;->a(J)I

    move-result v4

    sub-int/2addr v0, v4

    invoke-direct {p0, v1}, LM;->c(I)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    ushr-long v4, v2, v4

    const-wide/16 v6, 0x1

    and-long/2addr v2, v6

    neg-long v2, v2

    xor-long/2addr v2, v4

    :cond_0
    invoke-static {v2, v3}, Lag;->a(J)Ljava/lang/Long;

    move-result-object v2

    move-object v9, v2

    move v2, v0

    move-object v0, v9

    :goto_1
    invoke-direct {p0, v1}, LM;->a(I)I

    move-result v3

    invoke-direct {p0, v1, v0}, LM;->a(ILjava/lang/Object;)V

    invoke-direct {p0, v1}, LM;->a(I)I

    move-result v4

    if-nez v4, :cond_7

    invoke-direct {p0, v1, v0}, LM;->b(ILjava/lang/Object;)V

    move v0, v2

    goto :goto_0

    :pswitch_2
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x5

    if-ne v3, v6, :cond_1

    const/4 v3, 0x4

    :goto_2
    sub-int/2addr v0, v3

    move-wide v9, v4

    move v4, v3

    move v5, v2

    move-wide v2, v9

    :goto_3
    add-int/lit8 v6, v4, -0x1

    if-lez v4, :cond_2

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v4

    int-to-long v7, v4

    shl-long/2addr v7, v5

    or-long/2addr v2, v7

    add-int/lit8 v4, v5, 0x8

    move v5, v4

    move v4, v6

    goto :goto_3

    :cond_1
    const/16 v3, 0x8

    goto :goto_2

    :cond_2
    invoke-static {v2, v3}, Lag;->a(J)Ljava/lang/Long;

    move-result-object v2

    move-object v9, v2

    move v2, v0

    move-object v0, v9

    goto :goto_1

    :pswitch_3
    const/4 v2, 0x0

    invoke-static {p1, v2}, LM;->a(Ljava/io/InputStream;Z)J

    move-result-wide v2

    long-to-int v2, v2

    int-to-long v3, v2

    invoke-static {v3, v4}, LM;->a(J)I

    move-result v3

    sub-int/2addr v0, v3

    sub-int/2addr v0, v2

    invoke-direct {p0, v1}, LM;->b(I)I

    move-result v3

    const/16 v4, 0x1b

    if-ne v3, v4, :cond_3

    new-instance v3, LM;

    iget-object v4, p0, LM;->c:Lbl;

    invoke-virtual {v4, v1}, Lbl;->b(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lbl;

    invoke-direct {v3, p2}, LM;-><init>(Lbl;)V

    invoke-direct {v3, p1, v2}, LM;->a(Ljava/io/InputStream;I)I

    move v2, v0

    move-object v0, v3

    goto :goto_1

    :cond_3
    new-array v3, v2, [B

    const/4 v4, 0x0

    :goto_4
    if-ge v4, v2, :cond_5

    sub-int v5, v2, v4

    invoke-virtual {p1, v3, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    if-gtz v5, :cond_4

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unexp.EOF"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    add-int/2addr v4, v5

    goto :goto_4

    :cond_5
    move v2, v0

    move-object v0, v3

    goto :goto_1

    :pswitch_4
    new-instance v2, LM;

    iget-object v3, p0, LM;->c:Lbl;

    if-nez v3, :cond_6

    const/4 v3, 0x0

    :goto_5
    invoke-direct {v2, v3}, LM;-><init>(Lbl;)V

    invoke-direct {v2, p1, v0}, LM;->a(Ljava/io/InputStream;I)I

    move-result v0

    move-object v9, v2

    move v2, v0

    move-object v0, v9

    goto/16 :goto_1

    :cond_6
    iget-object v3, p0, LM;->c:Lbl;

    invoke-virtual {v3, v1}, Lbl;->b(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lbl;

    move-object v3, p2

    goto :goto_5

    :cond_7
    iget-object v4, p0, LM;->d:Lah;

    invoke-virtual {v4, v1}, Lah;->a(I)Ljava/lang/Object;

    move-result-object p2

    instance-of v4, p2, Ljava/util/Vector;

    if-eqz v4, :cond_8

    check-cast p2, Ljava/util/Vector;

    move-object v1, p2

    :goto_6
    invoke-virtual {v1, v0, v3}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    move v0, v2

    goto/16 :goto_0

    :cond_8
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    invoke-virtual {v4, p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v5, p0, LM;->d:Lah;

    invoke-virtual {v5, v1, v4}, Lah;->a(ILjava/lang/Object;)V

    move-object v1, v4

    goto :goto_6

    :cond_9
    if-gez v0, :cond_a

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :cond_a
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private a(Z)I
    .locals 9

    const/4 v8, 0x0

    iget v0, p0, LM;->f:I

    const/high16 v1, -0x8000

    if-eq v0, v1, :cond_0

    if-eqz p1, :cond_0

    iget v0, p0, LM;->f:I

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, LM;->d:Lah;

    invoke-virtual {v0}, Lah;->b()LaI;

    move-result-object v1

    move v0, v8

    :goto_1
    invoke-virtual {v1}, LaI;->a()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v1}, LaI;->b()I

    move-result v2

    move v3, v8

    move v4, v0

    :goto_2
    invoke-direct {p0, v2}, LM;->a(I)I

    move-result v0

    if-ge v3, v0, :cond_4

    shl-int/lit8 v0, v2, 0x3

    int-to-long v5, v0

    invoke-static {v5, v6}, LM;->a(J)I

    move-result v5

    invoke-direct {p0, v2}, LM;->d(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const/16 v0, 0x10

    invoke-direct {p0, v2, v3, v0}, LM;->a(III)Ljava/lang/Object;

    move-result-object v0

    instance-of v6, v0, [B

    if-eqz v6, :cond_2

    check-cast v0, [B

    array-length v0, v0

    :goto_3
    int-to-long v6, v0

    invoke-static {v6, v7}, LM;->a(J)I

    move-result v6

    add-int/2addr v5, v6

    add-int/2addr v0, v5

    :goto_4
    add-int/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    move v4, v0

    goto :goto_2

    :pswitch_1
    add-int/lit8 v0, v5, 0x4

    goto :goto_4

    :pswitch_2
    add-int/lit8 v0, v5, 0x8

    goto :goto_4

    :pswitch_3
    const/16 v0, 0x13

    invoke-direct {p0, v2, v3, v0}, LM;->a(III)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-direct {p0, v2}, LM;->c(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v6, v7}, LM;->b(J)J

    move-result-wide v6

    :cond_1
    invoke-static {v6, v7}, LM;->a(J)I

    move-result v0

    add-int/2addr v0, v5

    goto :goto_4

    :pswitch_4
    const/16 v0, 0x1a

    invoke-direct {p0, v2, v3, v0}, LM;->a(III)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LM;

    invoke-direct {v0, v8}, LM;->a(Z)I

    move-result v0

    add-int/2addr v0, v5

    add-int/2addr v0, v5

    goto :goto_4

    :cond_2
    instance-of v6, v0, Ljava/lang/String;

    if-eqz v6, :cond_3

    check-cast v0, Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v0, v6, v8}, Lat;->a(Ljava/lang/String;[BI)I

    move-result v0

    goto :goto_3

    :cond_3
    check-cast v0, LM;

    invoke-direct {v0, p1}, LM;->a(Z)I

    move-result v0

    goto :goto_3

    :cond_4
    move v0, v4

    goto :goto_1

    :cond_5
    iput v0, p0, LM;->f:I

    iget v0, p0, LM;->f:I

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static a(Ljava/io/InputStream;Z)J
    .locals 9

    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    move v7, v2

    move v8, v2

    move-wide v2, v0

    move v0, v7

    move v1, v8

    :goto_0
    const/16 v4, 0xa

    if-ge v0, v4, :cond_2

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    const-wide/16 v0, -0x1

    :goto_1
    return-wide v0

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "EOF"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    and-int/lit8 v5, v4, 0x7f

    int-to-long v5, v5

    shl-long/2addr v5, v1

    or-long/2addr v2, v5

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_2

    add-int/lit8 v1, v1, 0x7

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move-wide v0, v2

    goto :goto_1
.end method

.method private a(III)Ljava/lang/Object;
    .locals 4

    invoke-direct {p0, p1}, LM;->a(I)I

    move-result v0

    if-lt p2, v0, :cond_0

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, LM;->d:Lah;

    invoke-virtual {v0, p1}, Lah;->a(I)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    instance-of v2, v0, Ljava/util/Vector;

    if-eqz v2, :cond_3

    check-cast v0, Ljava/util/Vector;

    invoke-virtual {v0, p2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    invoke-static {v1, p3}, LM;->a(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, v1, :cond_1

    if-eqz v1, :cond_1

    if-nez v0, :cond_2

    invoke-direct {p0, p1, v2}, LM;->b(ILjava/lang/Object;)V

    :cond_1
    :goto_1
    return-object v2

    :cond_2
    invoke-virtual {v0, v2, p2}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    goto :goto_1

    :cond_3
    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_0
.end method

.method private static a(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 3

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unsupp.Type"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    move-object v0, p0

    :goto_0
    return-object v0

    :pswitch_2
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-int v0, v0

    packed-switch v0, :pswitch_data_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Type mismatch"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_3
    sget-object v0, LM;->a:Ljava/lang/Boolean;

    goto :goto_0

    :pswitch_4
    sget-object v0, LM;->b:Ljava/lang/Boolean;

    goto :goto_0

    :pswitch_5
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x1

    :goto_1
    invoke-static {v0, v1}, Lag;->a(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_1

    :cond_2
    move-object v0, p0

    goto :goto_0

    :pswitch_6
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_3

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lat;->a(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_0

    :cond_3
    instance-of v0, p0, LM;

    if-eqz v0, :cond_4

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_0
    check-cast p0, LM;

    invoke-virtual {p0, v0}, LM;->a(Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    move-object v0, p0

    goto :goto_0

    :pswitch_7
    instance-of v0, p0, [B

    if-eqz v0, :cond_5

    check-cast p0, [B

    const/4 v0, 0x0

    array-length v1, p0

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2}, Lat;->a([BIIZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    move-object v0, p0

    goto :goto_0

    :pswitch_8
    instance-of v0, p0, [B

    if-eqz v0, :cond_6

    :try_start_1
    new-instance v0, LM;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LM;-><init>(Lbl;)V

    check-cast p0, [B

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    array-length v2, p0

    invoke-direct {v0, v1, v2}, LM;->a(Ljava/io/InputStream;I)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    move-object v0, p0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_2
        :pswitch_6
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private a(ILjava/lang/Object;)V
    .locals 4

    invoke-direct {p0, p1}, LM;->b(I)I

    move-result v1

    const/16 v2, 0x10

    if-ne v1, v2, :cond_1

    iget-object v2, p0, LM;->c:Lbl;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    :pswitch_0
    :sswitch_0
    return-void

    :cond_1
    instance-of v2, p2, Ljava/lang/Boolean;

    if-eqz v2, :cond_3

    const/16 v2, 0x18

    if-eq v1, v2, :cond_0

    if-eqz v1, :cond_0

    :cond_2
    :goto_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Type mismatch type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, LM;->c:Lbl;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " tag:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    instance-of v2, p2, Ljava/lang/Long;

    if-eqz v2, :cond_4

    packed-switch v1, :pswitch_data_0

    :pswitch_1
    goto :goto_1

    :cond_4
    instance-of v2, p2, [B

    if-eqz v2, :cond_5

    sparse-switch v1, :sswitch_data_0

    goto :goto_1

    :cond_5
    instance-of v2, p2, LM;

    if-eqz v2, :cond_6

    sparse-switch v1, :sswitch_data_1

    goto :goto_1

    :sswitch_1
    iget-object v1, p0, LM;->c:Lbl;

    if-eqz v1, :cond_0

    iget-object v1, p0, LM;->c:Lbl;

    invoke-virtual {v1, p1}, Lbl;->b(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object v0, p2

    check-cast v0, LM;

    move-object v1, v0

    iget-object v1, v1, LM;->c:Lbl;

    if-eqz v1, :cond_0

    check-cast p2, LM;

    iget-object v1, p2, LM;->c:Lbl;

    iget-object v2, p0, LM;->c:Lbl;

    invoke-virtual {v2, p1}, Lbl;->b(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lbl;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_6
    instance-of v2, p2, Ljava/lang/String;

    if-eqz v2, :cond_2

    sparse-switch v1, :sswitch_data_2

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x19 -> :sswitch_0
        0x1b -> :sswitch_0
        0x1c -> :sswitch_0
        0x23 -> :sswitch_0
        0x24 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x2 -> :sswitch_1
        0x3 -> :sswitch_1
        0x19 -> :sswitch_1
        0x1a -> :sswitch_1
        0x1b -> :sswitch_1
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        0x2 -> :sswitch_0
        0x19 -> :sswitch_0
        0x1c -> :sswitch_0
        0x24 -> :sswitch_0
    .end sparse-switch
.end method

.method private static a(Ljava/io/OutputStream;J)V
    .locals 6

    const/4 v0, 0x0

    move-wide v1, p1

    :goto_0
    const/16 v3, 0xa

    if-ge v0, v3, :cond_0

    const-wide/16 v3, 0x7f

    and-long/2addr v3, v1

    long-to-int v3, v3

    const/4 v4, 0x7

    ushr-long/2addr v1, v4

    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-nez v4, :cond_1

    invoke-virtual {p0, v3}, Ljava/io/OutputStream;->write(I)V

    :cond_0
    return-void

    :cond_1
    or-int/lit16 v3, v3, 0x80

    invoke-virtual {p0, v3}, Ljava/io/OutputStream;->write(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private b(I)I
    .locals 4

    const/4 v3, 0x0

    const/16 v2, 0x10

    iget-object v0, p0, LM;->c:Lbl;

    if-eqz v0, :cond_4

    iget-object v0, p0, LM;->c:Lbl;

    invoke-virtual {v0, p1}, Lbl;->a(I)I

    move-result v0

    move v1, v0

    :goto_0
    if-ne v1, v2, :cond_3

    iget-object v0, p0, LM;->e:Lah;

    invoke-virtual {v0, p1}, Lah;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_1
    if-ne v0, v2, :cond_1

    invoke-direct {p0, p1}, LM;->a(I)I

    move-result v1

    if-lez v1, :cond_1

    invoke-direct {p0, p1, v3, v2}, LM;->a(III)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Long;

    if-nez v1, :cond_0

    instance-of v0, v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    :cond_0
    move v0, v3

    :cond_1
    :goto_2
    return v0

    :cond_2
    const/4 v0, 0x2

    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_1

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method private static b(J)J
    .locals 4

    const/4 v0, 0x1

    shl-long v0, p0, v0

    const/16 v2, 0x3f

    ushr-long v2, p0, v2

    neg-long v2, v2

    xor-long/2addr v0, v2

    return-wide v0
.end method

.method private b(ILjava/lang/Object;)V
    .locals 1

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_0
    if-eqz p2, :cond_1

    invoke-direct {p0, p1, p2}, LM;->a(ILjava/lang/Object;)V

    :cond_1
    iget-object v0, p0, LM;->d:Lah;

    invoke-virtual {v0, p1, p2}, Lah;->a(ILjava/lang/Object;)V

    return-void
.end method

.method private b(Ljava/io/OutputStream;)V
    .locals 19

    move-object/from16 v0, p0

    iget-object v0, v0, LM;->d:Lah;

    move-object v4, v0

    invoke-virtual {v4}, Lah;->b()LaI;

    move-result-object v5

    :cond_0
    invoke-virtual {v5}, LaI;->a()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v5}, LaI;->b()I

    move-result v6

    move-object/from16 v0, p0

    move v1, v6

    invoke-direct {v0, v1}, LM;->a(I)I

    move-result v7

    move-object/from16 v0, p0

    move v1, v6

    invoke-direct {v0, v1}, LM;->d(I)I

    move-result v8

    shl-int/lit8 v4, v6, 0x3

    or-int v9, v4, v8

    const/4 v4, 0x0

    move v10, v4

    :goto_0
    if-ge v10, v7, :cond_0

    int-to-long v11, v9

    move-object/from16 v0, p1

    move-wide v1, v11

    invoke-static {v0, v1, v2}, LM;->a(Ljava/io/OutputStream;J)V

    packed-switch v8, :pswitch_data_0

    :pswitch_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    :pswitch_1
    const/16 v4, 0x13

    move-object/from16 v0, p0

    move v1, v6

    move v2, v10

    move v3, v4

    invoke-direct {v0, v1, v2, v3}, LM;->a(III)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    const/4 v4, 0x5

    if-ne v8, v4, :cond_1

    const/4 v4, 0x4

    :goto_1
    const/4 v13, 0x0

    move/from16 v16, v13

    move-wide/from16 v17, v11

    move-wide/from16 v12, v17

    move/from16 v11, v16

    :goto_2
    if-ge v11, v4, :cond_3

    const-wide/16 v14, 0xff

    and-long/2addr v14, v12

    long-to-int v14, v14

    move-object/from16 v0, p1

    move v1, v14

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    const/16 v14, 0x8

    shr-long/2addr v12, v14

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_1
    const/16 v4, 0x8

    goto :goto_1

    :pswitch_2
    const/16 v4, 0x13

    move-object/from16 v0, p0

    move v1, v6

    move v2, v10

    move v3, v4

    invoke-direct {v0, v1, v2, v3}, LM;->a(III)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    move-object/from16 v0, p0

    move v1, v6

    invoke-direct {v0, v1}, LM;->c(I)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {v11, v12}, LM;->b(J)J

    move-result-wide v11

    :cond_2
    move-object/from16 v0, p1

    move-wide v1, v11

    invoke-static {v0, v1, v2}, LM;->a(Ljava/io/OutputStream;J)V

    :cond_3
    :goto_3
    add-int/lit8 v4, v10, 0x1

    move v10, v4

    goto :goto_0

    :pswitch_3
    move-object/from16 v0, p0

    move v1, v6

    invoke-direct {v0, v1}, LM;->b(I)I

    move-result v4

    const/16 v11, 0x1b

    if-ne v4, v11, :cond_4

    const/16 v4, 0x10

    :goto_4
    move-object/from16 v0, p0

    move v1, v6

    move v2, v10

    move v3, v4

    invoke-direct {v0, v1, v2, v3}, LM;->a(III)Ljava/lang/Object;

    move-result-object v4

    instance-of v11, v4, [B

    if-eqz v11, :cond_5

    check-cast v4, [B

    array-length v11, v4

    int-to-long v11, v11

    move-object/from16 v0, p1

    move-wide v1, v11

    invoke-static {v0, v1, v2}, LM;->a(Ljava/io/OutputStream;J)V

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    goto :goto_3

    :cond_4
    const/16 v4, 0x19

    goto :goto_4

    :cond_5
    check-cast v4, LM;

    const/4 v11, 0x1

    invoke-direct {v4, v11}, LM;->a(Z)I

    move-result v11

    int-to-long v11, v11

    move-object/from16 v0, p1

    move-wide v1, v11

    invoke-static {v0, v1, v2}, LM;->a(Ljava/io/OutputStream;J)V

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, LM;->b(Ljava/io/OutputStream;)V

    goto :goto_3

    :pswitch_4
    const/16 v4, 0x1a

    move-object/from16 v0, p0

    move v1, v6

    move v2, v10

    move v3, v4

    invoke-direct {v0, v1, v2, v3}, LM;->a(III)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LM;

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, LM;->b(Ljava/io/OutputStream;)V

    shl-int/lit8 v4, v6, 0x3

    or-int/lit8 v4, v4, 0x4

    int-to-long v11, v4

    move-object/from16 v0, p1

    move-wide v1, v11

    invoke-static {v0, v1, v2}, LM;->a(Ljava/io/OutputStream;J)V

    goto :goto_3

    :cond_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private c(I)Z
    .locals 2

    invoke-direct {p0, p1}, LM;->b(I)I

    move-result v0

    const/16 v1, 0x21

    if-eq v0, v1, :cond_0

    const/16 v1, 0x22

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final d(I)I
    .locals 5

    const/16 v4, 0x2f

    invoke-direct {p0, p1}, LM;->b(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupp.Type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, LM;->c:Lbl;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_1
    const/4 v0, 0x0

    :goto_0
    :pswitch_2
    return v0

    :pswitch_3
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_5
    const/4 v0, 0x5

    goto :goto_0

    :pswitch_6
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_1
        :pswitch_3
        :pswitch_6
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_5
        :pswitch_4
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public final a(Ljava/io/InputStream;)LM;
    .locals 1

    const v0, 0x7fffffff

    invoke-direct {p0, p1, v0}, LM;->a(Ljava/io/InputStream;I)I

    return-object p0
.end method

.method public final a(II)V
    .locals 2

    int-to-long v0, p2

    invoke-virtual {p0, p1, v0, v1}, LM;->a(IJ)V

    return-void
.end method

.method public final a(IJ)V
    .locals 1

    invoke-static {p2, p3}, Lag;->a(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, p1, v0}, LM;->b(ILjava/lang/Object;)V

    return-void
.end method

.method public final a(Ljava/io/OutputStream;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, LM;->a(Z)I

    invoke-direct {p0, p1}, LM;->b(Ljava/io/OutputStream;)V

    return-void
.end method
